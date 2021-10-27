#include<iostream>
//单向链表删除节点
struct ListNode {
	int val;
	ListNode *next;
	ListNode(int x):val(x),next(NULL){}
};
int main()
{
	ListNode *head=new ListNode(4);
	ListNode *second=new ListNode(5);
	ListNode *third =new ListNode(1);
	ListNode *fourth=new ListNode(9);
	head->next=second;
	second->next=third;
	third->next=fourth;
	int n=5;
	ListNode *f=head,*c=head->next;
	while(c!=nullptr && c->val!=n){
	f=c;
	c=c->next;
	}
	if(c!=nullptr) f->next=c->next;
	ListNode *h=head;
	while(h!=nullptr)
	{
		std::cout<<h->val<<std::endl;
		h=h->next;
	}
	return 0;	
}
