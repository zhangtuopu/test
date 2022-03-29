#include <iostream>
#include <string>
#include <sstream>
#include <vector>
int main() {
    std::vector<int> vec{1,2,4,8,13,17,20};
    int target=7;
    auto vbegin=vec.begin(),vend=vec.end();
    auto vmid=vbegin+(vend-vbegin)/2;
    while(vmid!=vend && *vmid!=target)
    {
        if (target<*vmid)
        {
            vend=vmid;
        }
        else
        {
            vbegin=vmid+1;
        }
        vmid=vbegin+(vend-vbegin)/2;
    }
    int i=0;
    int j=i++;
    std::cout<<j<<std::endl;
    return 0;
}
