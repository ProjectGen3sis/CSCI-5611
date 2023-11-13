# Seng Thao & Royal Lee

# Youtube Link
**Project 3**
https://www.youtube.com/watch?v=XTOLPLSZZ0c&ab_channel=RoyalLee

**Project 3 JOINTS**
https://www.youtube.com/watch?v=3GhK01Qj_8s&ab_channel=RoyalLee

**Project 3 NO JOINTS**
https://www.youtube.com/watch?v=_id2sAoWq5s&ab_channel=RoyalLee

# Images of Project 3
![image](https://github.com/ProjectGen3sis/CSCI-5611/assets/123200654/86ed9d87-6e0a-4f3d-ae0d-99ee386d356e)
![image](https://github.com/ProjectGen3sis/CSCI-5611/assets/123200654/69f224c1-7630-4321-865d-b180540a06ed)
![image](https://github.com/ProjectGen3sis/CSCI-5611/assets/123200654/25517815-9cd5-481f-8f67-77cd4c9319d6)

# Tools Used
IK_Exercise in class activity

Collision Library Detection from Project 1

# Implementations
**Single-arm	IK (at	least	2D) (up	to 20	points)**
We created a left arm and a right arm that each have access to 5 joints in total. Both arms can be shown reaching for the object associated with the mouse, as well as the three surrounding objects. The root of the skeleton which is at the bottom stays stationary, unless moved by the user.

**Multi-arm	IK	(at	least	2D) (up	to 20	points)**
Both the left and right arms have their own end effectors that reach for objects individually, and can be toggled on and off with the A and D key. There is a stationary root between the two arms located at the bottom of the spine, and two shared joints between the two arms that move according to each other. 

The left arm can be seen reaching for an object at the start of the video, and when it is out of reach
The right arm can be seen reaching for an object at around 0:24, and when it is out of reach
Both arms can be seen simultaneously reaching for an object at 0:55, and when it is out of reach for both

**Joint	limits (up	to 20	points)**		
The left arm with joints can be seen reaching for an object in the second video. There are joints in both the spine and the left arm, and we can see there is not much chaotic, unrealistic movement within the spine and the arm.

However, in the third video with no joints, we can see that the arm and spine move in an unrealistic fashion, bending along itself, and moving chaotically at certain angles.

**User	Interaction (up	to 10	points).**
The user is able to move the root of the skeleton with the left and right arrow keys. The arms are individually activated by pressing either A (left arm) or S (right arm). This can be seen in the video with the text "Left Arm Activated" and "Right Arm Activated." The user can also move the mouse to move the object associated with the mouse. This can be seen throughout both videos. Depending on if the user presses 1, 2, or 3, the arms will move towards different objects.

**Moving	IK	(at	least	2D) (up	to 10	points)**
The root of the skeleton can move left and right in a natural fashion using the left and right arrow keys. While the root of the skeleton is moving, the arms still move fluidly with the movement in order to reach for objects. This can be seen at 1:43 of the first video.

# Difficulties
We had difficulties with collision part because it would always get stuck in an infinite while-loop when colliding into a object. So, we decided to chalk it up as we did were not able to find a solution for it. I would say that it took some time to find out the right constraint values for the left and right arms that look realistic.
