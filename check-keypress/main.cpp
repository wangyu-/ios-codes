#include <IOKit/hid/IOHIDEventSystem.h>
#include <IOKit/hid/IOHIDEvent.h>
#include <mach/mach_time.h>
#include <stdio.h>

void handle_event (void* target, void* refcon, IOHIDServiceRef service, IOHIDEventRef event) {
	/*	IOHIDEventType type = IOHIDEventGetType(event);
		if (type == kIOHIDEventTypeKeyboard)
		{
		printf("!!!\n");
		int usagePage = IOHIDEventGetIntegerValue(event, kIOHIDEventFieldKeyboardUsagePage);
		if (usagePage == 12) 
		{
		int usage = IOHIDEventGetIntegerValue(event, kIOHIDEventFieldKeyboardUsage);
		int down = IOHIDEventGetIntegerValue(event, kIOHIDEventFieldKeyboardDown);
		int c=IOHIDEventGetIntegerValue(event,kIOHIDEventFieldKeyboardRepeat);
		printf("%d %d %d\n",usage,down,c);
		}
		}
	// handle the events here.
	//	printf("Received event of type %2d from service %p.\n", IOHIDEventGetType(event), service);
	 */
}

int main () {
	IOHIDEventSystemRef system= IOHIDEventSystemCreate(NULL);
	
	if(system==NULL)
	{
		printf("NULL\n");
		return 0;
	}
	IOHIDEventSystemOpen(system, handle_event, NULL, NULL, NULL);
//	sleep(1);

//	printf("HID Event system should now be running. Hit enter to quit any time.\n");
	uint64_t abTime = mach_absolute_time();
	AbsoluteTime timeStamp = *(AbsoluteTime *) &abTime;
	IOHIDEventRef keyboardEvent = 		IOHIDEventCreateKeyboardEvent(kCFAllocatorDefault,timeStamp, 12, 234, 0, kIOHIDEventOptionPixelUnits);
	//getchar();

	//	keyboardEventi=0;
	//IOHIDEventSystemClose(system, NULL);
//	int usage = IOHIDEventGetIntegerValue(keyboardEvent, kIOHIDEventFieldKeyboardUsage);

//	int a=IOHIDEventGetIntegerValue(keyboardEvent,kIOHIDEventFieldKeyboardDown);
//	int c=IOHIDEventGetIntegerValue(keyboardEvent,kIOHIDEventFieldKeyboardRepeat);
	//printf("%d %d %d\n",usage,a,c);
	IOHIDEventRef event2= 	IOHIDEventSystemCopyEvent(system,kIOHIDEventTypeKeyboard,keyboardEvent,0);
	int res=IOHIDEventGetIntegerValue(event2,kIOHIDEventFieldKeyboardDown);

	if(res==1)
	{
		printf("hold\n");
	}
	else
	{
		printf("not\n");
	}
	//IOHIDEventSystemClose(system, NULL);
	CFRelease(system);
	//printf("%d\n",b);
	//getchar();



	return 0;
}
