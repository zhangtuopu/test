//
// Created by zhangtuopu on 2022/2/18.
//
#include "ros/ros.h"
#include "moveit/move_group_interface/move_group_interface.h"
#include "moveit/planning_scene_interface/planning_scene_interface.h"

#include "moveit_msgs/DisplayRobotState.h"
#include "moveit_msgs/DisplayTrajectory.h"

#include "moveit_msgs/AttachedCollisionObject.h"
#include "moveit_msgs/CollisionObject.h"

#include "moveit_visual_tools/moveit_visual_tools.h"

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"moveit_test");
    ros::NodeHandle nh;
    ros::AsyncSpinner spinner(1);
    spinner.start();
    // name
    static const std::string PLANNING_GROUP="panda_arm";
    // move_group zhuce
    moveit::planning_interface::MoveGroupInterface move_group(PLANNING_GROUP);
    //
    moveit::planning_interface::PlanningSceneInterface planning_scene_interface;

    const robot_state::JointModelGroup* jointModelGroup=move_group.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

    namespace rvt = rviz_visual_tools;
    moveit_visual_tools::MoveItVisualTools visualTools("panda_link0");

    visualTools.deleteAllMarkers();
    // name of step position
    Eigen::Isometry3d test_pose=Eigen::Isometry3d::Identity();
    test_pose.translation().z()=1.75;
    visualTools.publishText(test_pose,"my_moveit_demo",rvt::WHITE,rvt::XLARGE);

    visualTools.trigger();

    ROS_INFO_NAMED("my_moveit_demo","planning frame: %s",move_group.getPlanningFrame().c_str());

    ROS_INFO_NAMED("my_moveit_demo","End effector link: %s", move_group.getEndEffector().c_str());

    ROS_INFO_NAMED("my_moveit_demo","available Planning groups:");
    std::copy(move_group.getJointModelGroupNames().begin(),move_group.getJointModelGroupNames().end(),std::ostream_iterator<std::string>(std::cout,","));

    //plan
    visualTools.prompt("Press 'next' to start");
    geometry_msgs::Pose target_pos1;
    target_pos1.orientation.w=1;
    target_pos1.position.x=0.28;
    target_pos1.position.y=-0.2;
    target_pos1.position.z=0.5;
    move_group.setPoseTarget(target_pos1);
    moveit::planning_interface::MoveGroupInterface::Plan my_plan;

    bool success=(move_group.plan(my_plan)==moveit::planning_interface::MoveItErrorCode::SUCCESS);
    ROS_INFO_NAMED("my_moveit_demo","plan 1(pose goal) %s",success? "" : "FAILED");

    ROS_INFO_NAMED("my_moveit_demo","visual plan 1 as line");

    // visualizing plans
    visualTools.publishAxisLabeled(target_pos1,"pose1");
    visualTools.publishText(test_pose,"Pose goal",rvt::WHITE,rvt::XLARGE);
    visualTools.publishTrajectoryLine(my_plan.trajectory_,jointModelGroup);
    visualTools.trigger();
    visualTools.prompt("press next to continue");
    // moving to a pose
//    move_group.move();

    moveit::core::RobotStatePtr current_state=move_group.getCurrentState();
    std::vector<double> joint_group_position;
    current_state->copyJointGroupPositions(jointModelGroup,joint_group_position);
    joint_group_position[0]=1;
    move_group.setJointValueTarget(joint_group_position);
    success=(move_group.plan(my_plan)==moveit::planning_interface::MoveItErrorCode::SUCCESS);
    ROS_INFO_NAMED("my_moveit_demo","visualizing plan 2 (joint space goal) %s",success ? "" : "Failed");
    visualTools.deleteAllMarkers();
    visualTools.publishText(test_pose,"joint space goal",rvt::WHITE,rvt::XLARGE);
    visualTools.publishTrajectoryLine(my_plan.trajectory_,jointModelGroup);
    for (int i = 0; i < 7; ++i) {
        std::cout<<my_plan.trajectory_.joint_trajectory.points[i].positions[0]<<std::endl;
    }

    visualTools.trigger();
    visualTools.prompt("press next to continue");
//    move_group.move();
    return 0;
}