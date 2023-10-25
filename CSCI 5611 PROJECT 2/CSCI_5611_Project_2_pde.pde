// sigh.....
// Double Pendulum converted into HW 2
// CSCI 5611 HW2 Integration Framework
// Seng Thao

void setup() {
  size(600, 600);
  surface.setTitle("Integration system");
  scene_scale = width / 10.0f;
}

// Node struct
class Node {
  Vec2 pos;
  Vec2 vel;
  Vec2 last_pos;

  Node(Vec2 pos) {
    this.pos = pos;
    this.vel = new Vec2(0, 0);
    this.last_pos = pos;

  } 
}

//Sphere 
Vec2 SpherePos = new Vec2(5, 8);
Vec2 SphereV = new Vec2(0,0);
float SphereRadius = 1;

// Scaling factor for the scene
float scene_scale = width / 10.0f;
// Link length
float link_length = .2;

// Gravity
Vec2 gravity = new Vec2(0, 10);

// Scaling factor for the scene

// Physics Parameters
int relaxation_steps = 5;
int num_substeps = 5;


// Nodes
Vec2 base_pos = new Vec2(5, 5);
Node base = new Node(base_pos);
Node node1 = new Node(new Vec2(5.2, 5));
Node node2 = new Node(new Vec2(5.4, 5)); // TODO: Add this node 
Node node3 = new Node(new Vec2(5.6, 5));
Node node4 = new Node(new Vec2(5.8, 5));
Node node5 = new Node(new Vec2(6, 5));
Node node6 = new Node(new Vec2(6.2, 5));
Node node7 = new Node(new Vec2(6.4, 5));
Node node8 = new Node(new Vec2(6.6, 5));
Node node9 = new Node(new Vec2(6.8, 5));
Node node10 = new Node(new Vec2(7, 5));
Node node11 = new Node(new Vec2(7.2, 5));
Node node12 = new Node(new Vec2(7.4, 5));
Node node13 = new Node(new Vec2(7.6, 5));
Node node14 = new Node(new Vec2(7.8, 5));
Node node15 = new Node(new Vec2(8.0, 5));
Node node16 = new Node(new Vec2(8.2, 5));
Node node17 = new Node(new Vec2(8.4, 5));
Node node18 = new Node(new Vec2(8.6, 5));
Node node19 = new Node(new Vec2(8.8, 5));

//BASE 2
Vec2 base_pos2 = new Vec2(5.2,5);
Node base2 = new Node(base_pos2);
Node node1_b2 = new Node(new Vec2(5.4, 5));
Node node2_b2 = new Node(new Vec2(5.6, 5));
Node node3_b2 = new Node(new Vec2(5.8, 5));
Node node4_b2 = new Node(new Vec2(6, 5));
Node node5_b2 = new Node(new Vec2(6.2, 5));
Node node6_b2 = new Node(new Vec2(6.4, 5));
Node node7_b2 = new Node(new Vec2(6.6, 5));
Node node8_b2 = new Node(new Vec2(6.8, 5));
Node node9_b2 = new Node(new Vec2(7, 5));
Node node10_b2 = new Node(new Vec2(7.2, 5));
Node node11_b2 = new Node(new Vec2(7.4, 5));
Node node12_b2 = new Node(new Vec2(7.6, 5));
Node node13_b2 = new Node(new Vec2(7.8, 5));
Node node14_b2 = new Node(new Vec2(8, 5));
Node node15_b2 = new Node(new Vec2(8.2, 5));
Node node16_b2 = new Node(new Vec2(8.4, 5));
Node node17_b2 = new Node(new Vec2(8.6, 5));
Node node18_b2 = new Node(new Vec2(8.8, 5));
Node node19_b2 = new Node(new Vec2(9, 5));

//BASE 3
Vec2 base_pos3 = new Vec2(5.4,5);
Node base3 = new Node(base_pos3);
Node node1_b3 = new Node(new Vec2(5.6, 5));
Node node2_b3 = new Node(new Vec2(5.8, 5));
Node node3_b3 = new Node(new Vec2(6, 5));
Node node4_b3 = new Node(new Vec2(6.2, 5));
Node node5_b3 = new Node(new Vec2(6.4, 5));
Node node6_b3 = new Node(new Vec2(6.6, 5));
Node node7_b3 = new Node(new Vec2(6.8, 5));
Node node8_b3 = new Node(new Vec2(7, 5));
Node node9_b3 = new Node(new Vec2(7.2, 5));
Node node10_b3 = new Node(new Vec2(7.4, 5));
Node node11_b3 = new Node(new Vec2(7.6, 5));
Node node12_b3 = new Node(new Vec2(7.8, 5));
Node node13_b3 = new Node(new Vec2(8, 5));
Node node14_b3 = new Node(new Vec2(8.2, 5));
Node node15_b3 = new Node(new Vec2(8.4, 5));
Node node16_b3 = new Node(new Vec2(8.6, 5));
Node node17_b3 = new Node(new Vec2(8.8, 5));
Node node18_b3 = new Node(new Vec2(9, 5));
Node node19_b3 = new Node(new Vec2(9.2, 5));




void update_physics(float dt) {
  // Semi-implicit Integration
  node1.last_pos = node1.pos;
  node1.vel = node1.vel.plus(gravity.times(dt));
  node1.pos = node1.pos.plus(node1.vel.times(dt));
   
  node2.last_pos = node2.pos;
  node2.vel = node2.vel.plus(gravity.times(dt));
  node2.pos = node2.pos.plus(node2.vel.times(dt));
  
  node3.last_pos = node3.pos;
  node3.vel = node3.vel.plus(gravity.times(dt));
  node3.pos = node3.pos.plus(node3.vel.times(dt));
  
  node4.last_pos = node4.pos;
  node4.vel = node4.vel.plus(gravity.times(dt));
  node4.pos = node4.pos.plus(node4.vel.times(dt));
  
    node5.last_pos = node5.pos;
  node5.vel = node5.vel.plus(gravity.times(dt));
  node5.pos = node5.pos.plus(node5.vel.times(dt));
  
    node6.last_pos = node6.pos;
  node6.vel = node6.vel.plus(gravity.times(dt));
  node6.pos = node6.pos.plus(node6.vel.times(dt));
  
    node7.last_pos = node7.pos;
  node7.vel = node7.vel.plus(gravity.times(dt));
  node7.pos = node7.pos.plus(node7.vel.times(dt));
  
    node8.last_pos = node8.pos;
  node8.vel = node8.vel.plus(gravity.times(dt));
  node8.pos = node8.pos.plus(node8.vel.times(dt));
  
    node9.last_pos = node9.pos;
  node9.vel = node9.vel.plus(gravity.times(dt));
  node9.pos = node9.pos.plus(node9.vel.times(dt));
  
    node10.last_pos = node10.pos;
  node10.vel = node10.vel.plus(gravity.times(dt));
  node10.pos = node10.pos.plus(node10.vel.times(dt));
  
      node11.last_pos = node11.pos;
  node11.vel = node11.vel.plus(gravity.times(dt));
  node11.pos = node11.pos.plus(node11.vel.times(dt));
  
      node12.last_pos = node12.pos;
  node12.vel = node12.vel.plus(gravity.times(dt));
  node12.pos = node12.pos.plus(node12.vel.times(dt));
  
      node13.last_pos = node13.pos;
  node13.vel = node13.vel.plus(gravity.times(dt));
  node13.pos = node13.pos.plus(node13.vel.times(dt));
  
      node14.last_pos = node14.pos;
  node14.vel = node14.vel.plus(gravity.times(dt));
  node14.pos = node14.pos.plus(node14.vel.times(dt));
  
      node15.last_pos = node15.pos;
  node15.vel = node15.vel.plus(gravity.times(dt));
  node15.pos = node15.pos.plus(node15.vel.times(dt));
  
      node16.last_pos = node16.pos;
  node16.vel = node16.vel.plus(gravity.times(dt));
  node16.pos = node16.pos.plus(node16.vel.times(dt));
  
      node17.last_pos = node17.pos;
  node17.vel = node17.vel.plus(gravity.times(dt));
  node17.pos = node17.pos.plus(node17.vel.times(dt));
  
      node18.last_pos = node18.pos;
  node18.vel = node18.vel.plus(gravity.times(dt));
  node18.pos = node18.pos.plus(node18.vel.times(dt));
  
      node19.last_pos = node19.pos;
  node19.vel = node19.vel.plus(gravity.times(dt));
  node19.pos = node19.pos.plus(node19.vel.times(dt));
  
  //BASE 2
  node1_b2.last_pos = node1_b2.pos; //node1_b2
  node1_b2.vel = node1_b2.vel.plus(gravity.times(dt));
  node1_b2.pos = node1_b2.pos.plus(node1_b2.vel.times(dt));
  
  
  node2_b2.last_pos = node2_b2.pos; //node2_b2
  node2_b2.vel = node2_b2.vel.plus(gravity.times(dt));
  node2_b2.pos = node2_b2.pos.plus(node2_b2.vel.times(dt));
  
  node3_b2.last_pos = node3_b2.pos; //node3_b2
  node3_b2.vel = node3_b2.vel.plus(gravity.times(dt));
  node3_b2.pos = node3_b2.pos.plus(node3_b2.vel.times(dt));
  
  node4_b2.last_pos = node4_b2.pos; //node4_b2
  node4_b2.vel = node4_b2.vel.plus(gravity.times(dt));
  node4_b2.pos = node4_b2.pos.plus(node4_b2.vel.times(dt));  
  
  node5_b2.last_pos = node5_b2.pos; //node5_b2
  node5_b2.vel = node5_b2.vel.plus(gravity.times(dt));
  node5_b2.pos = node5_b2.pos.plus(node5_b2.vel.times(dt));
  
  node6_b2.last_pos = node6_b2.pos; //node6_b2
  node6_b2.vel = node6_b2.vel.plus(gravity.times(dt));
  node6_b2.pos = node6_b2.pos.plus(node6_b2.vel.times(dt));  

  node7_b2.last_pos = node7_b2.pos; //node7_b2
  node7_b2.vel = node7_b2.vel.plus(gravity.times(dt));
  node7_b2.pos = node7_b2.pos.plus(node7_b2.vel.times(dt));  
  
  node8_b2.last_pos = node8_b2.pos; //node8_b2
  node8_b2.vel = node8_b2.vel.plus(gravity.times(dt));
  node8_b2.pos = node8_b2.pos.plus(node8_b2.vel.times(dt));  
  
  node9_b2.last_pos = node9_b2.pos; //node9_b2
  node9_b2.vel = node9_b2.vel.plus(gravity.times(dt));
  node9_b2.pos = node9_b2.pos.plus(node9_b2.vel.times(dt));  

  node10_b2.last_pos = node10_b2.pos; //node10_b2
  node10_b2.vel = node10_b2.vel.plus(gravity.times(dt));
  node10_b2.pos = node10_b2.pos.plus(node10_b2.vel.times(dt)); 
  
  node11_b2.last_pos = node11_b2.pos; //node11_b2
  node11_b2.vel = node11_b2.vel.plus(gravity.times(dt));
  node11_b2.pos = node11_b2.pos.plus(node11_b2.vel.times(dt));

  node12_b2.last_pos = node12_b2.pos; //node12_b2
  node12_b2.vel = node12_b2.vel.plus(gravity.times(dt));
  node12_b2.pos = node12_b2.pos.plus(node12_b2.vel.times(dt)); 
  
  node13_b2.last_pos = node13_b2.pos; //node13_b2
  node13_b2.vel = node13_b2.vel.plus(gravity.times(dt));
  node13_b2.pos = node13_b2.pos.plus(node13_b2.vel.times(dt)); 
  
  node14_b2.last_pos = node14_b2.pos; //node14_b2
  node14_b2.vel = node14_b2.vel.plus(gravity.times(dt));
  node14_b2.pos = node14_b2.pos.plus(node14_b2.vel.times(dt)); 
  
  node15_b2.last_pos = node15_b2.pos; //node15_b2
  node15_b2.vel = node15_b2.vel.plus(gravity.times(dt));
  node15_b2.pos = node15_b2.pos.plus(node15_b2.vel.times(dt)); 
  
  node16_b2.last_pos = node16_b2.pos; //node16_b2
  node16_b2.vel = node16_b2.vel.plus(gravity.times(dt));
  node16_b2.pos = node16_b2.pos.plus(node16_b2.vel.times(dt));   
  
  node17_b2.last_pos = node17_b2.pos; //node17_b2
  node17_b2.vel = node17_b2.vel.plus(gravity.times(dt));
  node17_b2.pos = node17_b2.pos.plus(node17_b2.vel.times(dt));   
  
  node18_b2.last_pos = node18_b2.pos; //node18_b2
  node18_b2.vel = node18_b2.vel.plus(gravity.times(dt));
  node18_b2.pos = node18_b2.pos.plus(node18_b2.vel.times(dt));   
  
  node19_b2.last_pos = node19_b2.pos; //node19_b2
  node19_b2.vel = node19_b2.vel.plus(gravity.times(dt));
  node19_b2.pos = node19_b2.pos.plus(node19_b2.vel.times(dt));   
  
  
  //Base 3
  node1_b3.last_pos = node1_b3.pos; 
  node1_b3.vel = node1_b3.vel.plus(gravity.times(dt));
  node1_b3.pos = node1_b3.pos.plus(node1_b3.vel.times(dt));
  
  node2_b3.last_pos = node2_b3.pos; 
  node2_b3.vel = node2_b3.vel.plus(gravity.times(dt));
  node2_b3.pos = node2_b3.pos.plus(node2_b3.vel.times(dt));  
  
  node3_b3.last_pos = node3_b3.pos; 
  node3_b3.vel = node3_b3.vel.plus(gravity.times(dt));
  node3_b3.pos = node3_b3.pos.plus(node3_b3.vel.times(dt));
  
  node4_b3.last_pos = node4_b3.pos; 
  node4_b3.vel = node4_b3.vel.plus(gravity.times(dt));
  node4_b3.pos = node4_b3.pos.plus(node4_b3.vel.times(dt));
  
  node5_b3.last_pos = node5_b3.pos; 
  node5_b3.vel = node5_b3.vel.plus(gravity.times(dt));
  node5_b3.pos = node5_b3.pos.plus(node5_b3.vel.times(dt));
  
  node6_b3.last_pos = node6_b3.pos; 
  node6_b3.vel = node6_b3.vel.plus(gravity.times(dt));
  node6_b3.pos = node6_b3.pos.plus(node6_b3.vel.times(dt));  

  node7_b3.last_pos = node7_b3.pos; 
  node7_b3.vel = node7_b3.vel.plus(gravity.times(dt));
  node7_b3.pos = node7_b3.pos.plus(node7_b3.vel.times(dt));
  
  node8_b3.last_pos = node8_b3.pos; 
  node8_b3.vel = node8_b3.vel.plus(gravity.times(dt));
  node8_b3.pos = node8_b3.pos.plus(node8_b3.vel.times(dt));
  
  node9_b3.last_pos = node9_b3.pos; 
  node9_b3.vel = node9_b3.vel.plus(gravity.times(dt));
  node9_b3.pos = node9_b3.pos.plus(node9_b3.vel.times(dt));
 
  node10_b3.last_pos = node10_b3.pos; 
  node10_b3.vel = node10_b3.vel.plus(gravity.times(dt));
  node10_b3.pos = node10_b3.pos.plus(node10_b3.vel.times(dt));  

  node11_b3.last_pos = node11_b3.pos; 
  node11_b3.vel = node11_b3.vel.plus(gravity.times(dt));
  node11_b3.pos = node11_b3.pos.plus(node11_b3.vel.times(dt));   
  
  node12_b3.last_pos = node12_b3.pos; 
  node12_b3.vel = node12_b3.vel.plus(gravity.times(dt));
  node12_b3.pos = node12_b3.pos.plus(node12_b3.vel.times(dt));   

  node13_b3.last_pos = node13_b3.pos; 
  node13_b3.vel = node13_b3.vel.plus(gravity.times(dt));
  node13_b3.pos = node13_b3.pos.plus(node13_b3.vel.times(dt)); 
  
  node14_b3.last_pos = node14_b3.pos; 
  node14_b3.vel = node14_b3.vel.plus(gravity.times(dt));
  node14_b3.pos = node14_b3.pos.plus(node14_b3.vel.times(dt));   
  
  node15_b3.last_pos = node15_b3.pos; 
  node15_b3.vel = node15_b3.vel.plus(gravity.times(dt));
  node15_b3.pos = node15_b3.pos.plus(node15_b3.vel.times(dt));   
  
  node16_b3.last_pos = node16_b3.pos; 
  node16_b3.vel = node16_b3.vel.plus(gravity.times(dt));
  node16_b3.pos = node16_b3.pos.plus(node16_b3.vel.times(dt));   
  
  node17_b3.last_pos = node17_b3.pos; 
  node17_b3.vel = node17_b3.vel.plus(gravity.times(dt));
  node17_b3.pos = node17_b3.pos.plus(node17_b3.vel.times(dt));   
  
  node18_b3.last_pos = node18_b3.pos; 
  node18_b3.vel = node18_b3.vel.plus(gravity.times(dt));
  node18_b3.pos = node18_b3.pos.plus(node18_b3.vel.times(dt));   
  
  node19_b3.last_pos = node19_b3.pos; 
  node19_b3.vel = node19_b3.vel.plus(gravity.times(dt));
  node19_b3.pos = node19_b3.pos.plus(node19_b3.vel.times(dt));   
  
  
  // TODO: Simulate node 2's position & velocity
  // Constrain the distance between nodes to the link length
  for (int i = 0; i < relaxation_steps; i++) {
    Vec2 delta = node1.pos.minus(base.pos);
    float delta_len = delta.length();
    float correction = delta_len - link_length;
    Vec2 delta_normalized = delta.normalized();
    node1.pos = node1.pos.minus(delta_normalized.times(correction / 2));
    base.pos = base.pos.plus(delta_normalized.times(correction / 2));
    
    // TODO: Constrain distance between node2 and node1
    //       Make sure you update the position of both notes!
    Vec2 delta2 = node2.pos.minus(node1.pos);
    float delta_len2 = delta2.length();
    float correction2 = delta_len2 - link_length;
    Vec2 delta_normalized2 = delta2.normalized();
    node2.pos = node2.pos.minus(delta_normalized2.times(correction2 / 2));
    node1.pos = node1.pos.plus(delta_normalized2.times(correction2 / 2));
    
    Vec2 delta3 = node3.pos.minus(node2.pos); //3 & 2
    float delta_len3 = delta3.length();
    float correction3 = delta_len3 - link_length;
    Vec2 delta_normalized3 = delta3.normalized();
    node3.pos = node3.pos.minus(delta_normalized3.times(correction3 / 2));
    node2.pos = node2.pos.plus(delta_normalized3.times(correction3 / 2));
    
    Vec2 delta4 = node4.pos.minus(node3.pos); //4 & 3
    float delta_len4 = delta4.length();
    float correction4 = delta_len4 - link_length;
    Vec2 delta_normalized4 = delta4.normalized();
    node4.pos = node4.pos.minus(delta_normalized4.times(correction4 / 2));
    node3.pos = node3.pos.plus(delta_normalized4.times(correction4 / 2));
    
    Vec2 delta5 = node5.pos.minus(node4.pos); // 5 & 4
    float delta_len5 = delta5.length();
    float correction5 = delta_len5 - link_length;
    Vec2 delta_normalized5 = delta5.normalized();
    node5.pos = node5.pos.minus(delta_normalized5.times(correction5 / 2));
    node4.pos = node4.pos.plus(delta_normalized5.times(correction5 / 2));
    
    Vec2 delta6 = node6.pos.minus(node5.pos); //6 & 5
    float delta_len6 = delta6.length();
    float correction6 = delta_len6 - link_length;
    Vec2 delta_normalized6 = delta6.normalized();
    node6.pos = node6.pos.minus(delta_normalized6.times(correction6 / 2));
    node5.pos = node5.pos.plus(delta_normalized6.times(correction6 / 2));
    
    Vec2 delta7 = node7.pos.minus(node6.pos); // 7 & 6
    float delta_len7 = delta7.length();
    float correction7 = delta_len7 - link_length;
    Vec2 delta_normalized7 = delta7.normalized();
    node7.pos = node7.pos.minus(delta_normalized7.times(correction7 / 2));
    node6.pos = node6.pos.plus(delta_normalized7.times(correction7 / 2));
    
    Vec2 delta8 = node8.pos.minus(node7.pos); // 8 & 7
    float delta_len8 = delta8.length();
    float correction8 = delta_len8 - link_length;
    Vec2 delta_normalized8 = delta8.normalized();
    node8.pos = node8.pos.minus(delta_normalized8.times(correction8 / 2));
    node7.pos = node7.pos.plus(delta_normalized8.times(correction8 / 2));
    
    Vec2 delta9 = node9.pos.minus(node8.pos); // 9 & 8
    float delta_len9 = delta9.length();
    float correction9 = delta_len9 - link_length;
    Vec2 delta_normalized9 = delta9.normalized();
    node9.pos = node9.pos.minus(delta_normalized9.times(correction9 / 2));
    node8.pos = node8.pos.plus(delta_normalized9.times(correction9 / 2));
    
    Vec2 delta10 = node10.pos.minus(node9.pos); //10 & 9
    float delta_len10 = delta10.length();
    float correction10 = delta_len10 - link_length;
    Vec2 delta_normalized10 = delta10.normalized();
    node10.pos = node10.pos.minus(delta_normalized10.times(correction10 / 2));
    node9.pos = node9.pos.plus(delta_normalized10.times(correction10 / 2));
    
    Vec2 delta11 = node11.pos.minus(node10.pos); //11 & 10
    float delta_len11 = delta11.length();
    float correction11 = delta_len11 - link_length;
    Vec2 delta_normalized11 = delta11.normalized();
    node11.pos = node11.pos.minus(delta_normalized11.times(correction11 / 2));
    node10.pos = node10.pos.plus(delta_normalized11.times(correction11 / 2));
    
    Vec2 delta12 = node12.pos.minus(node11.pos); //12 & 11
    float delta_len12 = delta12.length();
    float correction12 = delta_len12 - link_length;
    Vec2 delta_normalized12 = delta12.normalized();
    node12.pos = node12.pos.minus(delta_normalized12.times(correction12 / 2));
    node11.pos = node11.pos.plus(delta_normalized12.times(correction12 / 2));
    
    Vec2 delta13 = node13.pos.minus(node12.pos); //13 & 12
    float delta_len13 = delta13.length();
    float correction13 = delta_len13 - link_length;
    Vec2 delta_normalized13 = delta13.normalized();
    node13.pos = node13.pos.minus(delta_normalized13.times(correction13 / 2));
    node12.pos = node12.pos.plus(delta_normalized13.times(correction13 / 2));
    
    Vec2 delta14 = node14.pos.minus(node13.pos); //14 & 13
    float delta_len14 = delta14.length();
    float correction14 = delta_len14 - link_length;
    Vec2 delta_normalized14 = delta14.normalized();
    node14.pos = node14.pos.minus(delta_normalized14.times(correction14 / 2));
    node13.pos = node13.pos.plus(delta_normalized14.times(correction14 / 2));
    
    Vec2 delta15 = node15.pos.minus(node14.pos); //15 & 14
    float delta_len15 = delta15.length();
    float correction15 = delta_len15 - link_length;
    Vec2 delta_normalized15 = delta15.normalized();
    node15.pos = node15.pos.minus(delta_normalized15.times(correction15 / 2));
    node14.pos = node14.pos.plus(delta_normalized15.times(correction15 / 2));
    
    Vec2 delta16 = node16.pos.minus(node15.pos); //16 & 15
    float delta_len16 = delta16.length();
    float correction16 = delta_len16 - link_length;
    Vec2 delta_normalized16 = delta16.normalized();
    node16.pos = node16.pos.minus(delta_normalized16.times(correction16 / 2));
    node15.pos = node15.pos.plus(delta_normalized16.times(correction16 / 2));
    
    Vec2 delta17 = node17.pos.minus(node16.pos); //17 & 16
    float delta_len17 = delta17.length();
    float correction17 = delta_len17 - link_length;
    Vec2 delta_normalized17 = delta17.normalized();
    node17.pos = node17.pos.minus(delta_normalized17.times(correction17 / 2));
    node16.pos = node16.pos.plus(delta_normalized17.times(correction17 / 2));
    
    Vec2 delta18 = node18.pos.minus(node17.pos); //18 & 17
    float delta_len18 = delta18.length();
    float correction18 = delta_len18 - link_length;
    Vec2 delta_normalized18 = delta18.normalized();
    node18.pos = node18.pos.minus(delta_normalized18.times(correction18 / 2));
    node17.pos = node17.pos.plus(delta_normalized18.times(correction18 / 2));
    
    Vec2 delta19 = node19.pos.minus(node18.pos); //19 & 18
    float delta_len19 = delta19.length();
    float correction19 = delta_len19 - link_length;
    Vec2 delta_normalized19 = delta19.normalized();
    node19.pos = node19.pos.minus(delta_normalized19.times(correction19 / 2));
    node18.pos = node18.pos.plus(delta_normalized19.times(correction19 / 2));
    
    //vert B2
    Vec2 delta_b2 = node1_b2.pos.minus(base2.pos);
    float delta_len_b2 = delta_b2.length();
    float correction_b2 = delta_len_b2 - link_length;
    Vec2 delta_normalized_b2 = delta_b2.normalized();
    node1_b2.pos = node1_b2.pos.minus(delta_normalized_b2.times(correction_b2 / 2));
    base2.pos = base2.pos.plus(delta_normalized_b2.times(correction_b2 / 2));
    
    Vec2 delta_b2_2 = node2_b2.pos.minus(node1_b2.pos);
    float delta_len_b2_2 = delta_b2_2.length();
    float correction_b2_2 = delta_len_b2_2 - link_length;
    Vec2 delta_normalized_b2_2 = delta_b2_2.normalized();
    node2_b2.pos = node2_b2.pos.minus(delta_normalized_b2_2.times(correction_b2_2 / 2));
    node1_b2.pos = node1_b2.pos.plus(delta_normalized_b2_2.times(correction_b2_2 / 2));

    Vec2 delta_b2_3 = node3_b2.pos.minus(node2_b2.pos);
    float delta_len_b2_3 = delta_b2_3.length();
    float correction_b2_3 = delta_len_b2_3 - link_length;
    Vec2 delta_normalized_b2_3= delta_b2_3.normalized();
    node3_b2.pos = node3_b2.pos.minus(delta_normalized_b2_3.times(correction_b2_3 / 2));
    node2_b2.pos = node2_b2.pos.plus(delta_normalized_b2_3.times(correction_b2_3 / 2));
    
    Vec2 delta_b2_4 = node4_b2.pos.minus(node3_b2.pos);
    float delta_len_b2_4 = delta_b2_4.length();
    float correction_b2_4 = delta_len_b2_4 - link_length;
    Vec2 delta_normalized_b2_4 = delta_b2_4.normalized();
    node4_b2.pos = node4_b2.pos.minus(delta_normalized_b2_4.times(correction_b2_4 / 2));
    node3_b2.pos = node3_b2.pos.plus(delta_normalized_b2_4.times(correction_b2_4 / 2));

    Vec2 delta_b2_5 = node5_b2.pos.minus(node4_b2.pos);
    float delta_len_b2_5 = delta_b2_5.length();
    float correction_b2_5 = delta_len_b2_5 - link_length;
    Vec2 delta_normalized_b2_5 = delta_b2_5.normalized();
    node5_b2.pos = node5_b2.pos.minus(delta_normalized_b2_5.times(correction_b2_5 / 2));
    node4_b2.pos = node4_b2.pos.plus(delta_normalized_b2_5.times(correction_b2_5 / 2));

    Vec2 delta_b2_6 = node6_b2.pos.minus(node5_b2.pos);
    float delta_len_b2_6 = delta_b2_6.length();
    float correction_b2_6 = delta_len_b2_6 - link_length;
    Vec2 delta_normalized_b2_6 = delta_b2_6.normalized();
    node6_b2.pos = node6_b2.pos.minus(delta_normalized_b2_6.times(correction_b2_6 / 2));
    node5_b2.pos = node5_b2.pos.plus(delta_normalized_b2_6.times(correction_b2_6 / 2));
    
    Vec2 delta_b2_7 = node7_b2.pos.minus(node6_b2.pos);
    float delta_len_b2_7 = delta_b2_7.length();
    float correction_b2_7 = delta_len_b2_7 - link_length;
    Vec2 delta_normalized_b2_7 = delta_b2_7.normalized();
    node7_b2.pos = node7_b2.pos.minus(delta_normalized_b2_7.times(correction_b2_7 / 2));
    node6_b2.pos = node6_b2.pos.plus(delta_normalized_b2_7.times(correction_b2_7 / 2));

    Vec2 delta_b2_8 = node8_b2.pos.minus(node7_b2.pos);
    float delta_len_b2_8 = delta_b2_8.length();
    float correction_b2_8 = delta_len_b2_8 - link_length;
    Vec2 delta_normalized_b2_8 = delta_b2_8.normalized();
    node8_b2.pos = node8_b2.pos.minus(delta_normalized_b2_8.times(correction_b2_8 / 2));
    node7_b2.pos = node7_b2.pos.plus(delta_normalized_b2_8.times(correction_b2_8 / 2));
    
    Vec2 delta_b2_9 = node9_b2.pos.minus(node8_b2.pos);
    float delta_len_b2_9 = delta_b2_9.length();
    float correction_b2_9 = delta_len_b2_9 - link_length;
    Vec2 delta_normalized_b2_9 = delta_b2_9.normalized();
    node9_b2.pos = node9_b2.pos.minus(delta_normalized_b2_9.times(correction_b2_9 / 2));
    node8_b2.pos = node8_b2.pos.plus(delta_normalized_b2_9.times(correction_b2_9 / 2));

    Vec2 delta_b2_10 = node10_b2.pos.minus(node9_b2.pos);
    float delta_len_b2_10 = delta_b2_10.length();
    float correction_b2_10 = delta_len_b2_10 - link_length;
    Vec2 delta_normalized_b2_10 = delta_b2_10.normalized();
    node10_b2.pos = node10_b2.pos.minus(delta_normalized_b2_10.times(correction_b2_10 / 2));
    node9_b2.pos = node9_b2.pos.plus(delta_normalized_b2_10.times(correction_b2_10 / 2));
    
    Vec2 delta_b2_11 = node11_b2.pos.minus(node10_b2.pos);
    float delta_len_b2_11 = delta_b2_11.length();
    float correction_b2_11 = delta_len_b2_11 - link_length;
    Vec2 delta_normalized_b2_11 = delta_b2_11.normalized();
    node11_b2.pos = node11_b2.pos.minus(delta_normalized_b2_11.times(correction_b2_11 / 2));
    node10_b2.pos = node10_b2.pos.plus(delta_normalized_b2_11.times(correction_b2_11 / 2));   

    Vec2 delta_b2_12 = node12_b2.pos.minus(node11_b2.pos);
    float delta_len_b2_12 = delta_b2_12.length();
    float correction_b2_12 = delta_len_b2_12 - link_length;
    Vec2 delta_normalized_b2_12 = delta_b2_12.normalized();
    node12_b2.pos = node12_b2.pos.minus(delta_normalized_b2_12.times(correction_b2_12 / 2));
    node11_b2.pos = node11_b2.pos.plus(delta_normalized_b2_12.times(correction_b2_12 / 2)); 
    
    Vec2 delta_b2_13 = node13_b2.pos.minus(node12_b2.pos);
    float delta_len_b2_13 = delta_b2_13.length();
    float correction_b2_13 = delta_len_b2_13 - link_length;
    Vec2 delta_normalized_b2_13 = delta_b2_13.normalized();
    node13_b2.pos = node13_b2.pos.minus(delta_normalized_b2_13.times(correction_b2_13 / 2));
    node12_b2.pos = node12_b2.pos.plus(delta_normalized_b2_13.times(correction_b2_13 / 2)); 
    
    Vec2 delta_b2_14 = node14_b2.pos.minus(node13_b2.pos);
    float delta_len_b2_14 = delta_b2_14.length();
    float correction_b2_14 = delta_len_b2_14 - link_length;
    Vec2 delta_normalized_b2_14 = delta_b2_14.normalized();
    node14_b2.pos = node14_b2.pos.minus(delta_normalized_b2_14.times(correction_b2_14 / 2));
    node13_b2.pos = node13_b2.pos.plus(delta_normalized_b2_14.times(correction_b2_14 / 2)); 
    
    Vec2 delta_b2_15 = node15_b2.pos.minus(node14_b2.pos);
    float delta_len_b2_15 = delta_b2_15.length();
    float correction_b2_15 = delta_len_b2_15 - link_length;
    Vec2 delta_normalized_b2_15 = delta_b2_15.normalized();
    node15_b2.pos = node15_b2.pos.minus(delta_normalized_b2_15.times(correction_b2_15 / 2));
    node14_b2.pos = node14_b2.pos.plus(delta_normalized_b2_15.times(correction_b2_15 / 2)); 

    Vec2 delta_b2_16 = node16_b2.pos.minus(node15_b2.pos);
    float delta_len_b2_16 = delta_b2_16.length();
    float correction_b2_16 = delta_len_b2_16 - link_length;
    Vec2 delta_normalized_b2_16 = delta_b2_16.normalized();
    node16_b2.pos = node16_b2.pos.minus(delta_normalized_b2_16.times(correction_b2_16 / 2));
    node15_b2.pos = node15_b2.pos.plus(delta_normalized_b2_16.times(correction_b2_16 / 2)); 

    Vec2 delta_b2_17 = node17_b2.pos.minus(node16_b2.pos);
    float delta_len_b2_17 = delta_b2_17.length();
    float correction_b2_17 = delta_len_b2_17 - link_length;
    Vec2 delta_normalized_b2_17 = delta_b2_17.normalized();
    node17_b2.pos = node17_b2.pos.minus(delta_normalized_b2_17.times(correction_b2_17 / 2));
    node16_b2.pos = node16_b2.pos.plus(delta_normalized_b2_17.times(correction_b2_17 / 2)); 

    Vec2 delta_b2_18 = node18_b2.pos.minus(node17_b2.pos);
    float delta_len_b2_18 = delta_b2_18.length();
    float correction_b2_18 = delta_len_b2_18 - link_length;
    Vec2 delta_normalized_b2_18 = delta_b2_18.normalized();
    node18_b2.pos = node18_b2.pos.minus(delta_normalized_b2_18.times(correction_b2_18 / 2));
    node17_b2.pos = node17_b2.pos.plus(delta_normalized_b2_17.times(correction_b2_18 / 2)); 

    Vec2 delta_b2_19 = node19_b2.pos.minus(node18_b2.pos);
    float delta_len_b2_19 = delta_b2_19.length();
    float correction_b2_19 = delta_len_b2_19 - link_length;
    Vec2 delta_normalized_b2_19 = delta_b2_19.normalized();
    node19_b2.pos = node19_b2.pos.minus(delta_normalized_b2_19.times(correction_b2_19 / 2));
    node18_b2.pos = node18_b2.pos.plus(delta_normalized_b2_19.times(correction_b2_19 / 2)); 

    //vert B3
    Vec2 delta_b3 = node1_b3.pos.minus(base3.pos);
    float delta_len_b3 = delta_b3.length();
    float correction_b3 = delta_len_b3 - link_length;
    Vec2 delta_normalized_b3 = delta_b3.normalized();
    node1_b3.pos = node1_b3.pos.minus(delta_normalized_b3.times(correction_b3 / 2));
    base3.pos = base3.pos.plus(delta_normalized_b3.times(correction_b3 / 2));
    
    Vec2 delta_b3_2 = node2_b3.pos.minus(node1_b3.pos);
    float delta_len_b3_2 = delta_b3_2.length();
    float correction_b3_2 = delta_len_b3_2 - link_length;
    Vec2 delta_normalized_b3_2 = delta_b3_2.normalized();
    node2_b3.pos = node2_b3.pos.minus(delta_normalized_b3_2.times(correction_b3_2 / 2));
    node1_b3.pos = node1_b3.pos.plus(delta_normalized_b3_2.times(correction_b3_2 / 2));    
    
    Vec2 delta_b3_3 = node3_b3.pos.minus(node2_b3.pos);
    float delta_len_b3_3 = delta_b3_3.length();
    float correction_b3_3 = delta_len_b3_3 - link_length;
    Vec2 delta_normalized_b3_3 = delta_b3_3.normalized();
    node3_b3.pos = node3_b3.pos.minus(delta_normalized_b3_3.times(correction_b3_3 / 2));
    node2_b3.pos = node2_b3.pos.plus(delta_normalized_b3_3.times(correction_b3_3 / 2));

    Vec2 delta_b3_4 = node4_b3.pos.minus(node3_b3.pos);
    float delta_len_b3_4 = delta_b3_4.length();
    float correction_b3_4 = delta_len_b3_4 - link_length;
    Vec2 delta_normalized_b3_4 = delta_b3_4.normalized();
    node4_b3.pos = node4_b3.pos.minus(delta_normalized_b3_4.times(correction_b3_4 / 2));
    node3_b3.pos = node3_b3.pos.plus(delta_normalized_b3_4.times(correction_b3_4 / 2));
    
    Vec2 delta_b3_5 = node5_b3.pos.minus(node4_b3.pos);
    float delta_len_b3_5 = delta_b3_5.length();
    float correction_b3_5 = delta_len_b3_5 - link_length;
    Vec2 delta_normalized_b3_5 = delta_b3_5.normalized();
    node5_b3.pos = node5_b3.pos.minus(delta_normalized_b3_5.times(correction_b3_5 / 2));
    node4_b3.pos = node4_b3.pos.plus(delta_normalized_b3_5.times(correction_b3_5 / 2));    
    
    Vec2 delta_b3_6 = node6_b3.pos.minus(node5_b3.pos);
    float delta_len_b3_6 = delta_b3_6.length();
    float correction_b3_6 = delta_len_b3_6 - link_length;
    Vec2 delta_normalized_b3_6 = delta_b3_6.normalized();
    node6_b3.pos = node6_b3.pos.minus(delta_normalized_b3_6.times(correction_b3_6 / 2));
    node5_b3.pos = node5_b3.pos.plus(delta_normalized_b3_6.times(correction_b3_6 / 2)); 
    
    Vec2 delta_b3_7 = node7_b3.pos.minus(node6_b3.pos);
    float delta_len_b3_7 = delta_b3_7.length();
    float correction_b3_7 = delta_len_b3_7 - link_length;
    Vec2 delta_normalized_b3_7 = delta_b3_7.normalized();
    node7_b3.pos = node7_b3.pos.minus(delta_normalized_b3_7.times(correction_b3_7 / 2));
    node6_b3.pos = node6_b3.pos.plus(delta_normalized_b3_7.times(correction_b3_7 / 2));  
    
    Vec2 delta_b3_8 = node8_b3.pos.minus(node7_b3.pos);
    float delta_len_b3_8 = delta_b3_8.length();
    float correction_b3_8 = delta_len_b3_8 - link_length;
    Vec2 delta_normalized_b3_8 = delta_b3_8.normalized();
    node8_b3.pos = node8_b3.pos.minus(delta_normalized_b3_8.times(correction_b3_8 / 2));
    node7_b3.pos = node7_b3.pos.plus(delta_normalized_b3_8.times(correction_b3_8 / 2));    
    
    Vec2 delta_b3_9 = node9_b3.pos.minus(node8_b3.pos);
    float delta_len_b3_9 = delta_b3_9.length();
    float correction_b3_9 = delta_len_b3_9 - link_length;
    Vec2 delta_normalized_b3_9 = delta_b3_9.normalized();
    node9_b3.pos = node9_b3.pos.minus(delta_normalized_b3_9.times(correction_b3_9 / 2));
    node8_b3.pos = node8_b3.pos.plus(delta_normalized_b3_9.times(correction_b3_9 / 2));   
    
    Vec2 delta_b3_10 = node10_b3.pos.minus(node9_b3.pos);
    float delta_len_b3_10 = delta_b3_10.length();
    float correction_b3_10 = delta_len_b3_10 - link_length;
    Vec2 delta_normalized_b3_10 = delta_b3_10.normalized();
    node10_b3.pos = node10_b3.pos.minus(delta_normalized_b3_10.times(correction_b3_10 / 2));
    node9_b3.pos = node9_b3.pos.plus(delta_normalized_b3_10.times(correction_b3_10 / 2));    

    Vec2 delta_b3_11 = node11_b3.pos.minus(node10_b3.pos);
    float delta_len_b3_11 = delta_b3_11.length();
    float correction_b3_11 = delta_len_b3_11 - link_length;
    Vec2 delta_normalized_b3_11 = delta_b3_11.normalized();
    node11_b3.pos = node11_b3.pos.minus(delta_normalized_b3_11.times(correction_b3_11 / 2));
    node10_b3.pos = node10_b3.pos.plus(delta_normalized_b3_11.times(correction_b3_11 / 2));     
    
    Vec2 delta_b3_12 = node12_b3.pos.minus(node11_b3.pos);
    float delta_len_b3_12 = delta_b3_12.length();
    float correction_b3_12 = delta_len_b3_12 - link_length;
    Vec2 delta_normalized_b3_12 = delta_b3_12.normalized();
    node12_b3.pos = node12_b3.pos.minus(delta_normalized_b3_12.times(correction_b3_12 / 2));
    node11_b3.pos = node11_b3.pos.plus(delta_normalized_b3_12.times(correction_b3_12 / 2));     
    
    Vec2 delta_b3_13 = node13_b3.pos.minus(node12_b3.pos);
    float delta_len_b3_13 = delta_b3_13.length();
    float correction_b3_13 = delta_len_b3_13 - link_length;
    Vec2 delta_normalized_b3_13 = delta_b3_13.normalized();
    node13_b3.pos = node13_b3.pos.minus(delta_normalized_b3_13.times(correction_b3_13 / 2));
    node12_b3.pos = node12_b3.pos.plus(delta_normalized_b3_13.times(correction_b3_13 / 2));     
    
    Vec2 delta_b3_14 = node14_b3.pos.minus(node13_b3.pos);
    float delta_len_b3_14 = delta_b3_14.length();
    float correction_b3_14 = delta_len_b3_14 - link_length;
    Vec2 delta_normalized_b3_14 = delta_b3_14.normalized();
    node14_b3.pos = node14_b3.pos.minus(delta_normalized_b3_14.times(correction_b3_14 / 2));
    node13_b3.pos = node13_b3.pos.plus(delta_normalized_b3_14.times(correction_b3_14 / 2));     
    
    Vec2 delta_b3_15 = node15_b3.pos.minus(node14_b3.pos);
    float delta_len_b3_15 = delta_b3_15.length();
    float correction_b3_15 = delta_len_b3_15 - link_length;
    Vec2 delta_normalized_b3_15 = delta_b3_15.normalized();
    node15_b3.pos = node15_b3.pos.minus(delta_normalized_b3_15.times(correction_b3_15 / 2));
    node14_b3.pos = node14_b3.pos.plus(delta_normalized_b3_15.times(correction_b3_15 / 2)); 
    
    Vec2 delta_b3_16 = node16_b3.pos.minus(node15_b3.pos);
    float delta_len_b3_16 = delta_b3_16.length();
    float correction_b3_16 = delta_len_b3_16 - link_length;
    Vec2 delta_normalized_b3_16 = delta_b3_16.normalized();
    node16_b3.pos = node16_b3.pos.minus(delta_normalized_b3_16.times(correction_b3_16 / 2));
    node15_b3.pos = node15_b3.pos.plus(delta_normalized_b3_16.times(correction_b3_16 / 2));     
    
    Vec2 delta_b3_17 = node17_b3.pos.minus(node16_b3.pos);
    float delta_len_b3_17 = delta_b3_17.length();
    float correction_b3_17 = delta_len_b3_17 - link_length;
    Vec2 delta_normalized_b3_17 = delta_b3_17.normalized();
    node17_b3.pos = node17_b3.pos.minus(delta_normalized_b3_17.times(correction_b3_17 / 2));
    node16_b3.pos = node16_b3.pos.plus(delta_normalized_b3_17.times(correction_b3_17 / 2)); 
    
    Vec2 delta_b3_18 = node18_b3.pos.minus(node17_b3.pos);
    float delta_len_b3_18 = delta_b3_18.length();
    float correction_b3_18 = delta_len_b3_18 - link_length;
    Vec2 delta_normalized_b3_18 = delta_b3_18.normalized();
    node18_b3.pos = node18_b3.pos.minus(delta_normalized_b3_18.times(correction_b3_18 / 2));
    node17_b3.pos = node17_b3.pos.plus(delta_normalized_b3_18.times(correction_b3_18 / 2)); 
    
    Vec2 delta_b3_19 = node19_b3.pos.minus(node18_b3.pos);
    float delta_len_b3_19 = delta_b3_19.length();
    float correction_b3_19 = delta_len_b3_19 - link_length;
    Vec2 delta_normalized_b3_19 = delta_b3_19.normalized();
    node19_b3.pos = node19_b3.pos.minus(delta_normalized_b3_19.times(correction_b3_19 / 2));
    node18_b3.pos = node18_b3.pos.plus(delta_normalized_b3_19.times(correction_b3_19 / 2));     
    
    //Horizontal between B1 & B2 
    Vec2 delta_b1_b2 = base.pos.minus(base2.pos);
    float delta_len_b1_b2 = delta_b1_b2.length();
    float correction_b1_b2 = delta_len_b1_b2 - link_length;
    Vec2 delta_normalized_b1_b2 = delta_b1_b2.normalized();
    base.pos = base.pos.minus(delta_normalized_b1_b2.times(correction_b1_b2 / 2));
    base2.pos = base2.pos.plus(delta_normalized_b1_b2.times(correction_b1_b2 / 2));      
    
    Vec2 delta_b1_b2_1_1 = node1.pos.minus(node1_b2.pos); 
    float delta_len_b1_b2_1_1 = delta_b1_b2_1_1.length();
    float correction_b1_b2_1_1 = delta_len_b1_b2_1_1 - link_length;
    Vec2 delta_normalized_b1_b2_1_1 = delta_b1_b2_1_1.normalized();
    node1.pos = node1.pos.minus(delta_normalized_b1_b2_1_1.times(correction_b1_b2_1_1 / 2));
    node1_b2.pos = node1_b2.pos.plus(delta_normalized_b1_b2_1_1.times(correction_b1_b2_1_1 / 2));

    Vec2 delta_b1_b2_2_2 = node2.pos.minus(node2_b2.pos); 
    float delta_len_b1_b2_2_2 = delta_b1_b2_2_2.length();
    float correction_b1_b2_2_2 = delta_len_b1_b2_2_2 - link_length;
    Vec2 delta_normalized_b1_b2_2_2 = delta_b1_b2_2_2.normalized();
    node2.pos = node2.pos.minus(delta_normalized_b1_b2_2_2.times(correction_b1_b2_2_2 / 2));
    node2_b2.pos = node2_b2.pos.plus(delta_normalized_b1_b2_2_2.times(correction_b1_b2_2_2 / 2));

    Vec2 delta_b1_b2_3_3 = node3.pos.minus(node3_b2.pos); 
    float delta_len_b1_b2_3_3 = delta_b1_b2_3_3.length();
    float correction_b1_b2_3_3 = delta_len_b1_b2_3_3 - link_length;
    Vec2 delta_normalized_b1_b2_3_3 = delta_b1_b2_3_3.normalized();
    node3.pos = node3.pos.minus(delta_normalized_b1_b2_3_3.times(correction_b1_b2_3_3 / 2));
    node3_b2.pos = node3_b2.pos.plus(delta_normalized_b1_b2_3_3.times(correction_b1_b2_3_3 / 2));

    Vec2 delta_b1_b2_4_4 = node4.pos.minus(node4_b2.pos); 
    float delta_len_b1_b2_4_4= delta_b1_b2_4_4.length();
    float correction_b1_b2_4_4 = delta_len_b1_b2_4_4 - link_length;
    Vec2 delta_normalized_b1_b2_4_4 = delta_b1_b2_4_4.normalized();
    node4.pos = node4.pos.minus(delta_normalized_b1_b2_4_4.times(correction_b1_b2_4_4 / 2));
    node4_b2.pos = node4_b2.pos.plus(delta_normalized_b1_b2_4_4.times(correction_b1_b2_4_4 / 2));

    Vec2 delta_b1_b2_5_5 = node5.pos.minus(node5_b2.pos); 
    float delta_len_b1_b2_5_5= delta_b1_b2_5_5.length();
    float correction_b1_b2_5_5 = delta_len_b1_b2_5_5 - link_length;
    Vec2 delta_normalized_b1_b2_5_5 = delta_b1_b2_5_5.normalized();
    node5.pos = node5.pos.minus(delta_normalized_b1_b2_5_5.times(correction_b1_b2_5_5 / 2));
    node5_b2.pos = node5_b2.pos.plus(delta_normalized_b1_b2_5_5.times(correction_b1_b2_5_5 / 2));

    Vec2 delta_b1_b2_6_6 = node6.pos.minus(node6_b2.pos); 
    float delta_len_b1_b2_6_6 = delta_b1_b2_6_6.length();
    float correction_b1_b2_6_6 = delta_len_b1_b2_6_6 - link_length;
    Vec2 delta_normalized_b1_b2_6_6 = delta_b1_b2_6_6.normalized();
    node6.pos = node6.pos.minus(delta_normalized_b1_b2_6_6.times(correction_b1_b2_6_6 / 2));
    node6_b2.pos = node6_b2.pos.plus(delta_normalized_b1_b2_6_6.times(correction_b1_b2_6_6 / 2));
    
    Vec2 delta_b1_b2_7_7 = node7.pos.minus(node7_b2.pos); 
    float delta_len_b1_b2_7_7 = delta_b1_b2_7_7.length();
    float correction_b1_b2_7_7 = delta_len_b1_b2_7_7 - link_length;
    Vec2 delta_normalized_b1_b2_7_7 = delta_b1_b2_7_7.normalized();
    node7.pos = node7.pos.minus(delta_normalized_b1_b2_7_7.times(correction_b1_b2_7_7 / 2));
    node7_b2.pos = node7_b2.pos.plus(delta_normalized_b1_b2_7_7.times(correction_b1_b2_7_7 / 2));
    
    Vec2 delta_b1_b2_8_8 = node8.pos.minus(node8_b2.pos); 
    float delta_len_b1_b2_8_8 = delta_b1_b2_8_8.length();
    float correction_b1_b2_8_8 = delta_len_b1_b2_8_8 - link_length;
    Vec2 delta_normalized_b1_b2_8_8 = delta_b1_b2_8_8.normalized();
    node8.pos = node8.pos.minus(delta_normalized_b1_b2_8_8.times(correction_b1_b2_8_8 / 2));
    node8_b2.pos = node8_b2.pos.plus(delta_normalized_b1_b2_8_8.times(correction_b1_b2_8_8 / 2));

    Vec2 delta_b1_b2_9_9 = node9.pos.minus(node9_b2.pos); 
    float delta_len_b1_b2_9_9 = delta_b1_b2_9_9.length();
    float correction_b1_b2_9_9 = delta_len_b1_b2_9_9 - link_length;
    Vec2 delta_normalized_b1_b2_9_9 = delta_b1_b2_9_9.normalized();
    node9.pos = node9.pos.minus(delta_normalized_b1_b2_9_9.times(correction_b1_b2_9_9 / 2));
    node9_b2.pos = node9_b2.pos.plus(delta_normalized_b1_b2_9_9.times(correction_b1_b2_9_9 / 2));
    
    Vec2 delta_b1_b2_10_10 = node10.pos.minus(node10_b2.pos); 
    float delta_len_b1_b2_10_10 = delta_b1_b2_10_10.length();
    float correction_b1_b2_10_10 = delta_len_b1_b2_10_10 - link_length;
    Vec2 delta_normalized_b1_b2_10_10 = delta_b1_b2_10_10.normalized();
    node10.pos = node10.pos.minus(delta_normalized_b1_b2_10_10.times(correction_b1_b2_10_10 / 2));
    node10_b2.pos = node10_b2.pos.plus(delta_normalized_b1_b2_10_10.times(correction_b1_b2_10_10 / 2));
    
    Vec2 delta_b1_b2_11_11 = node11.pos.minus(node11_b2.pos); 
    float delta_len_b1_b2_11_11 = delta_b1_b2_11_11.length();
    float correction_b1_b2_11_11 = delta_len_b1_b2_11_11 - link_length;
    Vec2 delta_normalized_b1_b2_11_11 = delta_b1_b2_11_11.normalized();
    node11.pos = node11.pos.minus(delta_normalized_b1_b2_11_11.times(correction_b1_b2_11_11 / 2));
    node11_b2.pos = node11_b2.pos.plus(delta_normalized_b1_b2_11_11.times(correction_b1_b2_11_11 / 2));
    
    Vec2 delta_b1_b2_12_12 = node12.pos.minus(node12_b2.pos); 
    float delta_len_b1_b2_12_12 = delta_b1_b2_12_12.length();
    float correction_b1_b2_12_12 = delta_len_b1_b2_12_12 - link_length;
    Vec2 delta_normalized_b1_b2_12_12 = delta_b1_b2_12_12.normalized();
    node12.pos = node12.pos.minus(delta_normalized_b1_b2_12_12.times(correction_b1_b2_12_12 / 2));
    node12_b2.pos = node12_b2.pos.plus(delta_normalized_b1_b2_12_12.times(correction_b1_b2_12_12 / 2));    
    
    Vec2 delta_b1_b2_13_13 = node13.pos.minus(node13_b2.pos); 
    float delta_len_b1_b2_13_13 = delta_b1_b2_13_13.length();
    float correction_b1_b2_13_13 = delta_len_b1_b2_13_13 - link_length;
    Vec2 delta_normalized_b1_b2_13_13 = delta_b1_b2_13_13.normalized();
    node13.pos = node13.pos.minus(delta_normalized_b1_b2_13_13.times(correction_b1_b2_13_13 / 2));
    node13_b2.pos = node13_b2.pos.plus(delta_normalized_b1_b2_13_13.times(correction_b1_b2_13_13 / 2));    
    
    Vec2 delta_b1_b2_14_14 = node14.pos.minus(node14_b2.pos); 
    float delta_len_b1_b2_14_14 = delta_b1_b2_14_14.length();
    float correction_b1_b2_14_14 = delta_len_b1_b2_14_14 - link_length;
    Vec2 delta_normalized_b1_b2_14_14 = delta_b1_b2_14_14.normalized();
    node14.pos = node14.pos.minus(delta_normalized_b1_b2_14_14.times(correction_b1_b2_14_14 / 2));
    node14_b2.pos = node14_b2.pos.plus(delta_normalized_b1_b2_14_14.times(correction_b1_b2_14_14 / 2));    
    
    Vec2 delta_b1_b2_15_15 = node15.pos.minus(node15_b2.pos); 
    float delta_len_b1_b2_15_15 = delta_b1_b2_15_15.length();
    float correction_b1_b2_15_15 = delta_len_b1_b2_15_15 - link_length;
    Vec2 delta_normalized_b1_b2_15_15 = delta_b1_b2_15_15.normalized();
    node15.pos = node15.pos.minus(delta_normalized_b1_b2_15_15.times(correction_b1_b2_15_15 / 2));
    node15_b2.pos = node15_b2.pos.plus(delta_normalized_b1_b2_15_15.times(correction_b1_b2_15_15 / 2));    
    
    Vec2 delta_b1_b2_16_16 = node16.pos.minus(node16_b2.pos); 
    float delta_len_b1_b2_16_16 = delta_b1_b2_16_16.length();
    float correction_b1_b2_16_16 = delta_len_b1_b2_16_16 - link_length;
    Vec2 delta_normalized_b1_b2_16_16 = delta_b1_b2_16_16.normalized();
    node16.pos = node16.pos.minus(delta_normalized_b1_b2_16_16.times(correction_b1_b2_16_16 / 2));
    node16_b2.pos = node16_b2.pos.plus(delta_normalized_b1_b2_16_16.times(correction_b1_b2_16_16 / 2));    
    
    Vec2 delta_b1_b2_17_17 = node17.pos.minus(node17_b2.pos); 
    float delta_len_b1_b2_17_17 = delta_b1_b2_17_17.length();
    float correction_b1_b2_17_17 = delta_len_b1_b2_17_17 - link_length;
    Vec2 delta_normalized_b1_b2_17_17 = delta_b1_b2_17_17.normalized();
    node17.pos = node17.pos.minus(delta_normalized_b1_b2_17_17.times(correction_b1_b2_17_17 / 2));
    node17_b2.pos = node17_b2.pos.plus(delta_normalized_b1_b2_17_17.times(correction_b1_b2_17_17 / 2));
    
    Vec2 delta_b1_b2_18_18 = node18.pos.minus(node18_b2.pos); 
    float delta_len_b1_b2_18_18 = delta_b1_b2_18_18.length();
    float correction_b1_b2_18_18 = delta_len_b1_b2_18_18 - link_length;
    Vec2 delta_normalized_b1_b2_18_18 = delta_b1_b2_18_18.normalized();
    node18.pos = node18.pos.minus(delta_normalized_b1_b2_18_18.times(correction_b1_b2_18_18 / 2));
    node18_b2.pos = node18_b2.pos.plus(delta_normalized_b1_b2_18_18.times(correction_b1_b2_18_18 / 2));
    
    Vec2 delta_b1_b2_19_19 = node19.pos.minus(node19_b2.pos); 
    float delta_len_b1_b2_19_19 = delta_b1_b2_19_19.length();
    float correction_b1_b2_19_19 = delta_len_b1_b2_19_19 - link_length;
    Vec2 delta_normalized_b1_b2_19_19 = delta_b1_b2_19_19.normalized();
    node19.pos = node19.pos.minus(delta_normalized_b1_b2_19_19.times(correction_b1_b2_19_19 / 2));
    node19_b2.pos = node19_b2.pos.plus(delta_normalized_b1_b2_19_19.times(correction_b1_b2_19_19 / 2));    
    
    //Horizontal constrain between BASE 2 & BASE 3
    Vec2 delta_b2_b3 = base2.pos.minus(base3.pos);
    float delta_len_b2_b3 = delta_b2_b3.length();
    float correction_b2_b3 = delta_len_b2_b3 - link_length;
    Vec2 delta_normalized_b2_b3 = delta_b2_b3.normalized();
    base2.pos = base2.pos.minus(delta_normalized_b2_b3.times(correction_b2_b3 / 2));
    base3.pos = base3.pos.plus(delta_normalized_b2_b3.times(correction_b2_b3 / 2));      
    
    Vec2 delta_b2_b3_1_1 = node1_b2.pos.minus(node1_b3.pos); 
    float delta_len_b2_b3_1_1 = delta_b2_b3_1_1.length();
    float correction_b2_b3_1_1 = delta_len_b2_b3_1_1 - link_length;
    Vec2 delta_normalized_b2_b3_1_1 = delta_b2_b3_1_1.normalized();
    node1_b2.pos = node1_b2.pos.minus(delta_normalized_b2_b3_1_1.times(correction_b2_b3_1_1 / 2));
    node1_b3.pos = node1_b3.pos.plus(delta_normalized_b2_b3_1_1.times(correction_b2_b3_1_1 / 2));  
    
    Vec2 delta_b2_b3_2_2 = node2_b2.pos.minus(node2_b3.pos); 
    float delta_len_b2_b3_2_2 = delta_b2_b3_2_2.length();
    float correction_b2_b3_2_2 = delta_len_b2_b3_2_2 - link_length;
    Vec2 delta_normalized_b2_b3_2_2 = delta_b2_b3_2_2.normalized();
    node2_b2.pos = node2_b2.pos.minus(delta_normalized_b2_b3_2_2.times(correction_b2_b3_2_2 / 2));
    node2_b3.pos = node2_b3.pos.plus(delta_normalized_b2_b3_2_2.times(correction_b2_b3_2_2 / 2));    
    
    Vec2 delta_b2_b3_3_3 = node3_b2.pos.minus(node3_b3.pos); 
    float delta_len_b2_b3_3_3 = delta_b2_b3_3_3.length();
    float correction_b2_b3_3_3 = delta_len_b2_b3_3_3 - link_length;
    Vec2 delta_normalized_b2_b3_3_3 = delta_b2_b3_3_3.normalized();
    node3_b2.pos = node3_b2.pos.minus(delta_normalized_b2_b3_3_3.times(correction_b2_b3_3_3 / 2));
    node3_b3.pos = node3_b3.pos.plus(delta_normalized_b2_b3_3_3.times(correction_b2_b3_3_3 / 2));    
    
    Vec2 delta_b2_b3_4_4 = node4_b2.pos.minus(node4_b3.pos); 
    float delta_len_b2_b3_4_4 = delta_b2_b3_4_4.length();
    float correction_b2_b3_4_4 = delta_len_b2_b3_4_4 - link_length;
    Vec2 delta_normalized_b2_b3_4_4 = delta_b2_b3_4_4.normalized();
    node4_b2.pos = node4_b2.pos.minus(delta_normalized_b2_b3_4_4.times(correction_b2_b3_4_4 / 2));
    node4_b3.pos = node4_b3.pos.plus(delta_normalized_b2_b3_4_4.times(correction_b2_b3_4_4 / 2)); 
    
    Vec2 delta_b2_b3_5_5 = node5_b2.pos.minus(node5_b3.pos); 
    float delta_len_b2_b3_5_5 = delta_b2_b3_5_5.length();
    float correction_b2_b3_5_5 = delta_len_b2_b3_5_5 - link_length;
    Vec2 delta_normalized_b2_b3_5_5 = delta_b2_b3_5_5.normalized();
    node5_b2.pos = node5_b2.pos.minus(delta_normalized_b2_b3_5_5.times(correction_b2_b3_5_5 / 2));
    node5_b3.pos = node5_b3.pos.plus(delta_normalized_b2_b3_5_5.times(correction_b2_b3_5_5 / 2));     
    
    Vec2 delta_b2_b3_6_6 = node6_b2.pos.minus(node6_b3.pos); 
    float delta_len_b2_b3_6_6 = delta_b2_b3_6_6.length();
    float correction_b2_b3_6_6 = delta_len_b2_b3_6_6 - link_length;
    Vec2 delta_normalized_b2_b3_6_6 = delta_b2_b3_6_6.normalized();
    node6_b2.pos = node6_b2.pos.minus(delta_normalized_b2_b3_6_6.times(correction_b2_b3_6_6 / 2));
    node6_b3.pos = node6_b3.pos.plus(delta_normalized_b2_b3_6_6.times(correction_b2_b3_6_6 / 2));     
    
    Vec2 delta_b2_b3_7_7 = node7_b2.pos.minus(node7_b3.pos); 
    float delta_len_b2_b3_7_7 = delta_b2_b3_7_7.length();
    float correction_b2_b3_7_7 = delta_len_b2_b3_7_7 - link_length;
    Vec2 delta_normalized_b2_b3_7_7 = delta_b2_b3_7_7.normalized();
    node7_b2.pos = node7_b2.pos.minus(delta_normalized_b2_b3_7_7.times(correction_b2_b3_7_7 / 2));
    node7_b3.pos = node7_b3.pos.plus(delta_normalized_b2_b3_7_7.times(correction_b2_b3_7_7 / 2));     
   
    Vec2 delta_b2_b3_8_8 = node8_b2.pos.minus(node8_b3.pos); 
    float delta_len_b2_b3_8_8 = delta_b2_b3_8_8.length();
    float correction_b2_b3_8_8 = delta_len_b2_b3_8_8 - link_length;
    Vec2 delta_normalized_b2_b3_8_8 = delta_b2_b3_8_8.normalized();
    node8_b2.pos = node8_b2.pos.minus(delta_normalized_b2_b3_8_8.times(correction_b2_b3_8_8 / 2));
    node8_b3.pos = node8_b3.pos.plus(delta_normalized_b2_b3_8_8.times(correction_b2_b3_8_8 / 2));     
    
    Vec2 delta_b2_b3_9_9 = node9_b2.pos.minus(node9_b3.pos); 
    float delta_len_b2_b3_9_9 = delta_b2_b3_9_9.length();
    float correction_b2_b3_9_9 = delta_len_b2_b3_9_9 - link_length;
    Vec2 delta_normalized_b2_b3_9_9 = delta_b2_b3_9_9.normalized();
    node9_b2.pos = node9_b2.pos.minus(delta_normalized_b2_b3_9_9.times(correction_b2_b3_9_9 / 2));
    node9_b3.pos = node9_b3.pos.plus(delta_normalized_b2_b3_9_9.times(correction_b2_b3_9_9 / 2));     
    
    Vec2 delta_b2_b3_10_10 = node10_b2.pos.minus(node10_b3.pos); 
    float delta_len_b2_b3_10_10 = delta_b2_b3_10_10.length();
    float correction_b2_b3_10_10 = delta_len_b2_b3_10_10 - link_length;
    Vec2 delta_normalized_b2_b3_10_10 = delta_b2_b3_10_10.normalized();
    node10_b2.pos = node10_b2.pos.minus(delta_normalized_b2_b3_10_10.times(correction_b2_b3_10_10 / 2));
    node10_b3.pos = node10_b3.pos.plus(delta_normalized_b2_b3_10_10.times(correction_b2_b3_10_10 / 2));     

    Vec2 delta_b2_b3_11_11 = node11_b2.pos.minus(node11_b3.pos); 
    float delta_len_b2_b3_11_11 = delta_b2_b3_11_11.length();
    float correction_b2_b3_11_11 = delta_len_b2_b3_11_11 - link_length;
    Vec2 delta_normalized_b2_b3_11_11 = delta_b2_b3_11_11.normalized();
    node11_b2.pos = node11_b2.pos.minus(delta_normalized_b2_b3_11_11.times(correction_b2_b3_11_11 / 2));
    node11_b3.pos = node11_b3.pos.plus(delta_normalized_b2_b3_11_11.times(correction_b2_b3_11_11 / 2));     
    
    Vec2 delta_b2_b3_12_12 = node12_b2.pos.minus(node12_b3.pos); 
    float delta_len_b2_b3_12_12 = delta_b2_b3_12_12.length();
    float correction_b2_b3_12_12 = delta_len_b2_b3_12_12 - link_length;
    Vec2 delta_normalized_b2_b3_12_12 = delta_b2_b3_12_12.normalized();
    node12_b2.pos = node12_b2.pos.minus(delta_normalized_b2_b3_12_12.times(correction_b2_b3_12_12 / 2));
    node12_b3.pos = node12_b3.pos.plus(delta_normalized_b2_b3_12_12.times(correction_b2_b3_12_12 / 2));     
    
    Vec2 delta_b2_b3_13_13 = node13_b2.pos.minus(node13_b3.pos); 
    float delta_len_b2_b3_13_13 = delta_b2_b3_13_13.length();
    float correction_b2_b3_13_13 = delta_len_b2_b3_13_13 - link_length;
    Vec2 delta_normalized_b2_b3_13_13 = delta_b2_b3_13_13.normalized();
    node13_b2.pos = node13_b2.pos.minus(delta_normalized_b2_b3_13_13.times(correction_b2_b3_13_13 / 2));
    node13_b3.pos = node13_b3.pos.plus(delta_normalized_b2_b3_13_13.times(correction_b2_b3_13_13 / 2)); 
    
    Vec2 delta_b2_b3_14_14 = node14_b2.pos.minus(node14_b3.pos); 
    float delta_len_b2_b3_14_14 = delta_b2_b3_14_14.length();
    float correction_b2_b3_14_14 = delta_len_b2_b3_14_14 - link_length;
    Vec2 delta_normalized_b2_b3_14_14 = delta_b2_b3_14_14.normalized();
    node14_b2.pos = node14_b2.pos.minus(delta_normalized_b2_b3_14_14.times(correction_b2_b3_14_14 / 2));
    node14_b3.pos = node14_b3.pos.plus(delta_normalized_b2_b3_14_14.times(correction_b2_b3_14_14 / 2));  
    
    Vec2 delta_b2_b3_15_15 = node15_b2.pos.minus(node15_b3.pos); 
    float delta_len_b2_b3_15_15 = delta_b2_b3_15_15.length();
    float correction_b2_b3_15_15 = delta_len_b2_b3_15_15 - link_length;
    Vec2 delta_normalized_b2_b3_15_15 = delta_b2_b3_15_15.normalized();
    node15_b2.pos = node15_b2.pos.minus(delta_normalized_b2_b3_15_15.times(correction_b2_b3_15_15 / 2));
    node15_b3.pos = node15_b3.pos.plus(delta_normalized_b2_b3_15_15.times(correction_b2_b3_15_15 / 2));     
    
    Vec2 delta_b2_b3_16_16 = node16_b2.pos.minus(node16_b3.pos); 
    float delta_len_b2_b3_16_16 = delta_b2_b3_16_16.length();
    float correction_b2_b3_16_16 = delta_len_b2_b3_16_16 - link_length;
    Vec2 delta_normalized_b2_b3_16_16 = delta_b2_b3_16_16.normalized();
    node16_b2.pos = node16_b2.pos.minus(delta_normalized_b2_b3_16_16.times(correction_b2_b3_16_16 / 2));
    node16_b3.pos = node16_b3.pos.plus(delta_normalized_b2_b3_16_16.times(correction_b2_b3_16_16 / 2));     
    
    Vec2 delta_b2_b3_17_17 = node17_b2.pos.minus(node17_b3.pos); 
    float delta_len_b2_b3_17_17 = delta_b2_b3_17_17.length();
    float correction_b2_b3_17_17 = delta_len_b2_b3_17_17 - link_length;
    Vec2 delta_normalized_b2_b3_17_17 = delta_b2_b3_17_17.normalized();
    node17_b2.pos = node17_b2.pos.minus(delta_normalized_b2_b3_17_17.times(correction_b2_b3_17_17 / 2));
    node17_b3.pos = node17_b3.pos.plus(delta_normalized_b2_b3_17_17.times(correction_b2_b3_17_17 / 2)); 
    
    Vec2 delta_b2_b3_18_18 = node18_b2.pos.minus(node18_b3.pos); 
    float delta_len_b2_b3_18_18 = delta_b2_b3_18_18.length();
    float correction_b2_b3_18_18 = delta_len_b2_b3_18_18 - link_length;
    Vec2 delta_normalized_b2_b3_18_18 = delta_b2_b3_18_18.normalized();
    node18_b2.pos = node18_b2.pos.minus(delta_normalized_b2_b3_18_18.times(correction_b2_b3_18_18 / 2));
    node18_b3.pos = node18_b3.pos.plus(delta_normalized_b2_b3_18_18.times(correction_b2_b3_18_18 / 2));     
    
    Vec2 delta_b2_b3_19_19 = node19_b2.pos.minus(node19_b3.pos); 
    float delta_len_b2_b3_19_19 = delta_b2_b3_19_19.length();
    float correction_b2_b3_19_19 = delta_len_b2_b3_19_19 - link_length;
    Vec2 delta_normalized_b2_b3_19_19 = delta_b2_b3_19_19.normalized();
    node19_b2.pos = node19_b2.pos.minus(delta_normalized_b2_b3_19_19.times(correction_b2_b3_19_19 / 2));
    node19_b3.pos = node19_b3.pos.plus(delta_normalized_b2_b3_19_19.times(correction_b2_b3_19_19 / 2));     
    
    
    //Collision Check
    if(node1.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node1.pos.minus(SpherePos)).normalized();
      node1.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
 println("Collide");
   }

   if(node2.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node2.pos.minus(SpherePos)).normalized();
      node2.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
      println("Collide");
   }
   
   if(node3.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node3.pos.minus(SpherePos)).normalized();
      node3.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
      println("Collide");

   } 
   
   if(node4.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node4.pos.minus(SpherePos)).normalized();
      node4.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
      println("Collide");

   } 
   
   if(node5.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node5.pos.minus(SpherePos)).normalized();
      node5.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");

   }  

     if(node6.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node6.pos.minus(SpherePos)).normalized();
      node6.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));

println("Collide");
   } 
   
     if(node7.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node7.pos.minus(SpherePos)).normalized();
      node7.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));

println("Collide");
   }    
   
     if(node8.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node8.pos.minus(SpherePos)).normalized();
      node8.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
 println("Collide");
   }       
   
     if(node9.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node9.pos.minus(SpherePos)).normalized();
      node9.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));

println("Collide");
   }   

     if(node10.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node10.pos.minus(SpherePos)).normalized();
      node10.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));

println("Collide");
   }      
   
     if(node11.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node11.pos.minus(SpherePos)).normalized();
      node11.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));

println("Collide");
   }    
   
     if(node12.pos.distanceTo(SpherePos) < (SphereRadius) ){
      Vec2 normal = (node12.pos.minus(SpherePos)).normalized();
      node12.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");
   }    

      if(node13.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node13.pos.minus(SpherePos)).normalized();
      node13.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
 println("Collide");
   } 
  
     if(node14.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node14.pos.minus(SpherePos)).normalized();
      node14.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");
   }    
   
     if(node15.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node15.pos.minus(SpherePos)).normalized();
      node15.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");
   } 
   
     if(node16.pos.distanceTo(SpherePos) < (SphereRadius )){
      Vec2 normal = (node16.pos.minus(SpherePos)).normalized();
      node16.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");
   }    

     if(node17.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node17.pos.minus(SpherePos)).normalized();
      node17.pos = SpherePos.plus(normal.times(SphereRadius ).times(1.01));
println("Collide");
   } 

     if(node18.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node18.pos.minus(SpherePos)).normalized();
      node18.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
 println("Collide");
   } 

     if(node19.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node19.pos.minus(SpherePos)).normalized();
      node19.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
 println("Collide");
   } 
   
      if(node1_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node1_b2.pos.minus(SpherePos)).normalized();
      node1_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node2_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node2_b2.pos.minus(SpherePos)).normalized();
      node2_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }
   
      if(node3_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node3_b2.pos.minus(SpherePos)).normalized();
      node3_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node4_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node4_b2.pos.minus(SpherePos)).normalized();
      node4_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node5_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node5_b2.pos.minus(SpherePos)).normalized();
      node5_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node6_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node6_b2.pos.minus(SpherePos)).normalized();
      node6_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }  
   
      if(node7_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node7_b2.pos.minus(SpherePos)).normalized();
      node7_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node8_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node8_b2.pos.minus(SpherePos)).normalized();
      node8_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node9_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node9_b2.pos.minus(SpherePos)).normalized();
      node9_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }   
   
      if(node10_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node10_b2.pos.minus(SpherePos)).normalized();
      node10_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node11_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node11_b2.pos.minus(SpherePos)).normalized();
      node11_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    

      if(node12_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node12_b2.pos.minus(SpherePos)).normalized();
      node12_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node13_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node13_b2.pos.minus(SpherePos)).normalized();
      node13_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    

      if(node14_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node14_b2.pos.minus(SpherePos)).normalized();
      node14_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node15_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node15_b2.pos.minus(SpherePos)).normalized();
      node15_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }  
   
      if(node16_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node16_b2.pos.minus(SpherePos)).normalized();
      node16_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }   
   
      if(node17_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node17_b2.pos.minus(SpherePos)).normalized();
      node17_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
  
      if(node18_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node18_b2.pos.minus(SpherePos)).normalized();
      node18_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node19_b2.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node19_b2.pos.minus(SpherePos)).normalized();
      node19_b2.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }   
   
      if(node1_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node1_b3.pos.minus(SpherePos)).normalized();
      node1_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node2_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node2_b3.pos.minus(SpherePos)).normalized();
      node2_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }
   
      if(node3_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node3_b3.pos.minus(SpherePos)).normalized();
      node3_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node4_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node4_b3.pos.minus(SpherePos)).normalized();
      node4_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node5_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node5_b3.pos.minus(SpherePos)).normalized();
      node5_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node6_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node6_b3.pos.minus(SpherePos)).normalized();
      node6_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }  
   
      if(node7_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node7_b3.pos.minus(SpherePos)).normalized();
      node7_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node8_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node8_b3.pos.minus(SpherePos)).normalized();
      node8_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node9_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node9_b3.pos.minus(SpherePos)).normalized();
      node9_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }   
   
      if(node10_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node10_b3.pos.minus(SpherePos)).normalized();
      node10_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node11_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node11_b3.pos.minus(SpherePos)).normalized();
      node11_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    

      if(node12_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node12_b3.pos.minus(SpherePos)).normalized();
      node12_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
   
      if(node13_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node13_b3.pos.minus(SpherePos)).normalized();
      node13_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    

      if(node14_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node14_b3.pos.minus(SpherePos)).normalized();
      node14_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node15_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node15_b3.pos.minus(SpherePos)).normalized();
      node15_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }  
   
      if(node16_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node16_b3.pos.minus(SpherePos)).normalized();
      node16_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }   
   
      if(node17_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node17_b3.pos.minus(SpherePos)).normalized();
      node17_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
  
      if(node18_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node18_b3.pos.minus(SpherePos)).normalized();
      node18_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   }    
   
      if(node19_b3.pos.distanceTo(SpherePos) < (SphereRadius)){
      Vec2 normal = (node19_b3.pos.minus(SpherePos)).normalized();
      node19_b3.pos = SpherePos.plus(normal.times(SphereRadius).times(1.01));
println("Collide");
   } 
    
    
    base.pos = base_pos; // Fix the base node in place
    base2.pos = base_pos2;
    base3.pos = base_pos3;
    
    
    
   }

   

  // Update the velocities (PBD)
  base.vel = base.pos.minus(base.last_pos).times(1 / dt);  
  node1.vel = node1.pos.minus(node1.last_pos).times(1 / dt);
  // TODO: Update the velocity of node 2 based on its positions 
  node2.vel = node2.pos.minus(node2.last_pos).times(1 / dt);
  node3.vel = node3.pos.minus(node3.last_pos).times(1 / dt);
  node4.vel = node4.pos.minus(node4.last_pos).times(1 / dt);
  node5.vel = node5.pos.minus(node5.last_pos).times(1 / dt);
  node6.vel = node6.pos.minus(node6.last_pos).times(1 / dt);
  node7.vel = node7.pos.minus(node7.last_pos).times(1 / dt);
  node8.vel = node8.pos.minus(node8.last_pos).times(1 / dt);
  node9.vel = node9.pos.minus(node9.last_pos).times(1 / dt);
  node10.vel = node10.pos.minus(node10.last_pos).times(1 / dt);
  node11.vel = node11.pos.minus(node11.last_pos).times(1 / dt);
  node12.vel = node12.pos.minus(node12.last_pos).times(1 / dt);
  node13.vel = node13.pos.minus(node13.last_pos).times(1 / dt);
  node14.vel = node14.pos.minus(node14.last_pos).times(1 / dt);
  node15.vel = node15.pos.minus(node15.last_pos).times(1 / dt);
  node16.vel = node16.pos.minus(node16.last_pos).times(1 / dt);
  node17.vel = node17.pos.minus(node17.last_pos).times(1 / dt);
  node18.vel = node18.pos.minus(node18.last_pos).times(1 / dt);
  node19.vel = node19.pos.minus(node19.last_pos).times(1 / dt);
  
  //BASE 2
  base2.vel = base2.pos.minus(base2.last_pos).times(1 / dt);
  node1_b2.vel = node1_b2.pos.minus(node1_b2.last_pos).times(1 / dt);
  node2_b2.vel = node2_b2.pos.minus(node2_b2.last_pos).times(1 / dt);
  node3_b2.vel = node3_b2.pos.minus(node3_b2.last_pos).times(1 / dt);
  node4_b2.vel = node4_b2.pos.minus(node4_b2.last_pos).times(1 / dt);
  node5_b2.vel = node5_b2.pos.minus(node5_b2.last_pos).times(1 / dt);
  node6_b2.vel = node6_b2.pos.minus(node6_b2.last_pos).times(1 / dt);
  node7_b2.vel = node7_b2.pos.minus(node7_b2.last_pos).times(1 / dt);
  node8_b2.vel = node8_b2.pos.minus(node8_b2.last_pos).times(1 / dt);
  node9_b2.vel = node9_b2.pos.minus(node9_b2.last_pos).times(1 / dt);
  node10_b2.vel = node10_b2.pos.minus(node10_b2.last_pos).times(1 / dt);
  node11_b2.vel = node11_b2.pos.minus(node11_b2.last_pos).times(1 / dt);
  node12_b2.vel = node12_b2.pos.minus(node12_b2.last_pos).times(1 / dt);
  node13_b2.vel = node13_b2.pos.minus(node13_b2.last_pos).times(1 / dt);
  node14_b2.vel = node14_b2.pos.minus(node14_b2.last_pos).times(1 / dt);
  node15_b2.vel = node15_b2.pos.minus(node15_b2.last_pos).times(1 / dt);
  node16_b2.vel = node16_b2.pos.minus(node16_b2.last_pos).times(1 / dt);
  node17_b2.vel = node17_b2.pos.minus(node17_b2.last_pos).times(1 / dt);
  node18_b2.vel = node18_b2.pos.minus(node18_b2.last_pos).times(1 / dt);
  node19_b2.vel = node19_b2.pos.minus(node19_b2.last_pos).times(1 / dt);
  
  //BASE 3
  base3.vel = base3.pos.minus(base3.last_pos).times(1 / dt);
  node1_b3.vel = node1_b3.pos.minus(node1_b3.last_pos).times(1 / dt);
  node2_b3.vel = node2_b3.pos.minus(node2_b3.last_pos).times(1 / dt);
  node3_b3.vel = node3_b3.pos.minus(node3_b3.last_pos).times(1 / dt);
  node4_b3.vel = node4_b3.pos.minus(node4_b3.last_pos).times(1 / dt);
  node5_b3.vel = node5_b3.pos.minus(node5_b3.last_pos).times(1 / dt);
  node6_b3.vel = node6_b3.pos.minus(node6_b3.last_pos).times(1 / dt);
  node7_b3.vel = node7_b3.pos.minus(node7_b3.last_pos).times(1 / dt);
  node8_b3.vel = node8_b3.pos.minus(node8_b3.last_pos).times(1 / dt);
  node9_b3.vel = node9_b3.pos.minus(node9_b3.last_pos).times(1 / dt);
  node10_b3.vel = node10_b3.pos.minus(node10_b3.last_pos).times(1 / dt);
  node11_b3.vel = node11_b3.pos.minus(node11_b3.last_pos).times(1 / dt);
  node12_b3.vel = node12_b3.pos.minus(node12_b3.last_pos).times(1 / dt);
  node13_b3.vel = node13_b3.pos.minus(node13_b3.last_pos).times(1 / dt);
  node14_b3.vel = node14_b3.pos.minus(node14_b3.last_pos).times(1 / dt);
  node15_b3.vel = node15_b3.pos.minus(node15_b3.last_pos).times(1 / dt);
  node16_b3.vel = node16_b3.pos.minus(node16_b3.last_pos).times(1 / dt);
  node17_b3.vel = node17_b3.pos.minus(node17_b3.last_pos).times(1 / dt);
  node18_b3.vel = node18_b3.pos.minus(node18_b3.last_pos).times(1 / dt);
  node19_b3.vel = node19_b3.pos.minus(node19_b3.last_pos).times(1 / dt);  
}

boolean paused = false;

void keyPressed() {
  if (key == ' ') {
    paused = !paused;
  }
  
}

float time = 0;
void draw() {
  float dt = 1.0/20; //Dynamic dt: 1/frameRate;
  
  if (!paused) {
    for (int i = 0; i < num_substeps; i++) {
      time += dt / num_substeps;
      update_physics(dt / num_substeps);
    }
  }
  
  
  background(255);
  stroke(0);
  strokeWeight(2);

  // Draw Nodes (green with black outline)
  fill(0, 255, 0);
  stroke(0);
  strokeWeight(0.02 * scene_scale);
ellipse(base.pos.x * scene_scale, base.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);   //BASE 1
  ellipse(node1.pos.x * scene_scale, node1.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  // TODO: Draw node_2
  ellipse(node2.pos.x * scene_scale, node2.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node3.pos.x * scene_scale, node3.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node4.pos.x * scene_scale, node4.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node5.pos.x * scene_scale, node5.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node6.pos.x * scene_scale, node6.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node7.pos.x * scene_scale, node7.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node8.pos.x * scene_scale, node8.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node9.pos.x * scene_scale, node9.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node10.pos.x * scene_scale, node10.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node11.pos.x * scene_scale, node11.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node12.pos.x * scene_scale, node12.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node13.pos.x * scene_scale, node13.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node14.pos.x * scene_scale, node14.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node15.pos.x * scene_scale, node15.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node16.pos.x * scene_scale, node16.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node17.pos.x * scene_scale, node17.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node18.pos.x * scene_scale, node18.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  ellipse(node19.pos.x * scene_scale, node19.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale);
  
  //BASE 2 
  ellipse(base2.pos.x * scene_scale, base2.pos.y * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );  
  ellipse(node1_b2.pos.x * scene_scale, node1_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node2_b2.pos.x * scene_scale, node2_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node3_b2.pos.x * scene_scale, node3_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node4_b2.pos.x * scene_scale, node4_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node5_b2.pos.x * scene_scale, node5_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node6_b2.pos.x * scene_scale, node6_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node7_b2.pos.x * scene_scale, node7_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node8_b2.pos.x * scene_scale, node8_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node9_b2.pos.x * scene_scale, node9_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node10_b2.pos.x * scene_scale, node10_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node11_b2.pos.x * scene_scale, node11_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node12_b2.pos.x * scene_scale, node12_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node13_b2.pos.x * scene_scale, node13_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node14_b2.pos.x * scene_scale, node14_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node15_b2.pos.x* scene_scale , node15_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node16_b2.pos.x * scene_scale, node16_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node17_b2.pos.x * scene_scale, node17_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node18_b2.pos.x * scene_scale, node18_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node19_b2.pos.x * scene_scale, node19_b2.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );

  //BASE 3
  ellipse(base3.pos.x * scene_scale, base3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );  
  ellipse(node1_b3.pos.x * scene_scale, node1_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node2_b3.pos.x * scene_scale, node2_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node3_b3.pos.x * scene_scale, node3_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node4_b3.pos.x * scene_scale, node4_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node5_b3.pos.x * scene_scale, node5_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node6_b3.pos.x * scene_scale, node6_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node7_b3.pos.x * scene_scale, node7_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node8_b3.pos.x * scene_scale, node8_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node9_b3.pos.x * scene_scale, node9_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node10_b3.pos.x * scene_scale, node10_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node11_b3.pos.x * scene_scale, node11_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node12_b3.pos.x * scene_scale, node12_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node13_b3.pos.x * scene_scale, node13_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node14_b3.pos.x * scene_scale, node14_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node15_b3.pos.x * scene_scale, node15_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale );
  ellipse(node16_b3.pos.x * scene_scale, node16_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node17_b3.pos.x * scene_scale, node17_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node18_b3.pos.x * scene_scale, node18_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  ellipse(node19_b3.pos.x * scene_scale, node19_b3.pos.y  * scene_scale, 0.3 * scene_scale, 0.3 * scene_scale  );
  
  
  // Draw Links (black)
  stroke(0);
  strokeWeight(0.02 * scene_scale);
  line(base.pos.x * scene_scale, base.pos.y * scene_scale, node1.pos.x * scene_scale, node1.pos.y * scene_scale);
  // TODO: Add link between node_1 and node_2
  line(node1.pos.x * scene_scale, node1.pos.y * scene_scale, node2.pos.x * scene_scale, node2.pos.y * scene_scale);
  line(node2.pos.x * scene_scale, node2.pos.y * scene_scale, node3.pos.x * scene_scale, node3.pos.y * scene_scale);
  line(node3.pos.x * scene_scale, node3.pos.y * scene_scale, node4.pos.x * scene_scale, node4.pos.y * scene_scale);
  line(node4.pos.x * scene_scale, node4.pos.y * scene_scale, node5.pos.x * scene_scale, node5.pos.y * scene_scale);
  line(node5.pos.x * scene_scale, node5.pos.y * scene_scale, node6.pos.x * scene_scale, node6.pos.y * scene_scale);
  line(node6.pos.x * scene_scale, node6.pos.y * scene_scale, node7.pos.x * scene_scale, node7.pos.y * scene_scale);
  line(node7.pos.x * scene_scale, node7.pos.y * scene_scale, node8.pos.x * scene_scale, node8.pos.y * scene_scale);
  line(node8.pos.x * scene_scale, node8.pos.y * scene_scale, node9.pos.x * scene_scale, node9.pos.y * scene_scale);
  line(node9.pos.x * scene_scale, node9.pos.y * scene_scale, node10.pos.x * scene_scale, node10.pos.y * scene_scale);
  line(node10.pos.x * scene_scale, node10.pos.y * scene_scale, node11.pos.x * scene_scale, node11.pos.y * scene_scale);
  line(node11.pos.x * scene_scale, node11.pos.y * scene_scale, node12.pos.x * scene_scale, node12.pos.y * scene_scale);
  line(node12.pos.x * scene_scale, node12.pos.y * scene_scale, node13.pos.x * scene_scale, node13.pos.y * scene_scale);
  line(node13.pos.x * scene_scale, node13.pos.y * scene_scale, node14.pos.x * scene_scale, node14.pos.y * scene_scale);
  line(node14.pos.x * scene_scale, node14.pos.y * scene_scale, node15.pos.x * scene_scale, node15.pos.y * scene_scale);
  line(node15.pos.x * scene_scale, node15.pos.y * scene_scale, node16.pos.x * scene_scale, node16.pos.y * scene_scale);
  line(node16.pos.x * scene_scale, node16.pos.y * scene_scale, node17.pos.x * scene_scale, node17.pos.y * scene_scale);
  line(node17.pos.x * scene_scale, node17.pos.y * scene_scale, node18.pos.x * scene_scale, node18.pos.y * scene_scale);
  line(node18.pos.x * scene_scale, node18.pos.y * scene_scale, node19.pos.x * scene_scale, node19.pos.y * scene_scale);
  
  //BASE 2
  line(base2.pos.x * scene_scale, base2.pos.y * scene_scale, node1_b2.pos.x * scene_scale, node1_b2.pos.y * scene_scale);
  line(node1_b2.pos.x * scene_scale, node1_b2.pos.y * scene_scale, node2_b2.pos.x * scene_scale, node2_b2.pos.y * scene_scale);
  line(node2_b2.pos.x * scene_scale, node2_b2.pos.y * scene_scale, node3_b2.pos.x * scene_scale, node3_b2.pos.y * scene_scale);
  line(node3_b2.pos.x * scene_scale, node3_b2.pos.y * scene_scale, node4_b2.pos.x * scene_scale, node4_b2.pos.y * scene_scale);
  line(node4_b2.pos.x * scene_scale, node4_b2.pos.y * scene_scale, node5_b2.pos.x * scene_scale, node5_b2.pos.y * scene_scale);
  line(node5_b2.pos.x * scene_scale, node5_b2.pos.y * scene_scale, node6_b2.pos.x * scene_scale, node6_b2.pos.y * scene_scale);
  line(node6_b2.pos.x * scene_scale, node6_b2.pos.y * scene_scale, node7_b2.pos.x * scene_scale, node7_b2.pos.y * scene_scale);
  line(node7_b2.pos.x * scene_scale, node7_b2.pos.y * scene_scale, node8_b2.pos.x * scene_scale, node8_b2.pos.y * scene_scale);
  line(node8_b2.pos.x * scene_scale, node8_b2.pos.y * scene_scale, node9_b2.pos.x * scene_scale, node9_b2.pos.y * scene_scale);
  line(node9_b2.pos.x * scene_scale, node9_b2.pos.y * scene_scale, node10_b2.pos.x* scene_scale , node10_b2.pos.y * scene_scale);
  line(node10_b2.pos.x * scene_scale, node10_b2.pos.y * scene_scale, node11_b2.pos.x * scene_scale, node11_b2.pos.y * scene_scale);
  line(node11_b2.pos.x * scene_scale, node11_b2.pos.y * scene_scale, node12_b2.pos.x * scene_scale, node12_b2.pos.y * scene_scale);
  line(node12_b2.pos.x * scene_scale, node12_b2.pos.y * scene_scale, node13_b2.pos.x* scene_scale , node13_b2.pos.y * scene_scale);
  line(node13_b2.pos.x * scene_scale, node13_b2.pos.y * scene_scale, node14_b2.pos.x * scene_scale, node14_b2.pos.y * scene_scale);
  line(node14_b2.pos.x * scene_scale, node14_b2.pos.y * scene_scale, node15_b2.pos.x * scene_scale, node15_b2.pos.y * scene_scale);
  line(node15_b2.pos.x * scene_scale, node15_b2.pos.y * scene_scale, node16_b2.pos.x * scene_scale, node16_b2.pos.y * scene_scale);
  line(node16_b2.pos.x * scene_scale, node16_b2.pos.y * scene_scale, node17_b2.pos.x * scene_scale, node17_b2.pos.y * scene_scale);
  line(node17_b2.pos.x * scene_scale, node17_b2.pos.y * scene_scale, node18_b2.pos.x * scene_scale, node18_b2.pos.y * scene_scale);
  line(node18_b2.pos.x * scene_scale, node18_b2.pos.y * scene_scale, node19_b2.pos.x * scene_scale, node19_b2.pos.y * scene_scale);
  
  //BASE 3
  line(base3.pos.x * scene_scale, base3.pos.y * scene_scale, node1_b3.pos.x * scene_scale, node1_b3.pos.y * scene_scale);
  line(node1_b3.pos.x * scene_scale, node1_b3.pos.y * scene_scale, node2_b3.pos.x * scene_scale, node2_b3.pos.y * scene_scale);
  line(node2_b3.pos.x * scene_scale, node2_b3.pos.y * scene_scale, node3_b3.pos.x * scene_scale, node3_b3.pos.y * scene_scale);
  line(node3_b3.pos.x * scene_scale, node3_b3.pos.y * scene_scale, node4_b3.pos.x * scene_scale, node4_b3.pos.y * scene_scale);
  line(node4_b3.pos.x * scene_scale, node4_b3.pos.y * scene_scale, node5_b3.pos.x * scene_scale, node5_b3.pos.y * scene_scale);
  line(node5_b3.pos.x * scene_scale, node5_b3.pos.y * scene_scale, node6_b3.pos.x * scene_scale, node6_b3.pos.y * scene_scale);
  line(node6_b3.pos.x * scene_scale, node6_b3.pos.y * scene_scale, node7_b3.pos.x * scene_scale, node7_b3.pos.y * scene_scale);
  line(node7_b3.pos.x * scene_scale, node7_b3.pos.y * scene_scale, node8_b3.pos.x * scene_scale, node8_b3.pos.y * scene_scale);
  line(node8_b3.pos.x * scene_scale, node8_b3.pos.y * scene_scale, node9_b3.pos.x * scene_scale, node9_b3.pos.y * scene_scale);
  line(node9_b3.pos.x * scene_scale, node9_b3.pos.y * scene_scale, node10_b3.pos.x * scene_scale, node10_b3.pos.y * scene_scale);
  line(node10_b3.pos.x * scene_scale, node10_b3.pos.y * scene_scale, node11_b3.pos.x * scene_scale, node11_b3.pos.y * scene_scale);
  line(node11_b3.pos.x * scene_scale, node11_b3.pos.y * scene_scale, node12_b3.pos.x * scene_scale, node12_b3.pos.y * scene_scale);
  line(node12_b3.pos.x * scene_scale, node12_b3.pos.y * scene_scale, node13_b3.pos.x * scene_scale, node13_b3.pos.y * scene_scale);
  line(node13_b3.pos.x * scene_scale, node13_b3.pos.y * scene_scale, node14_b3.pos.x * scene_scale, node14_b3.pos.y * scene_scale);
  line(node14_b3.pos.x * scene_scale, node14_b3.pos.y * scene_scale, node15_b3.pos.x * scene_scale, node15_b3.pos.y * scene_scale);
  line(node15_b3.pos.x * scene_scale, node15_b3.pos.y * scene_scale, node16_b3.pos.x * scene_scale, node16_b3.pos.y * scene_scale);
  line(node16_b3.pos.x * scene_scale, node16_b3.pos.y * scene_scale, node17_b3.pos.x * scene_scale, node17_b3.pos.y * scene_scale);
  line(node17_b3.pos.x * scene_scale, node17_b3.pos.y * scene_scale, node18_b3.pos.x * scene_scale, node18_b3.pos.y * scene_scale);
  line(node18_b3.pos.x * scene_scale, node18_b3.pos.y * scene_scale, node19_b3.pos.x * scene_scale, node19_b3.pos.y * scene_scale);    
  
  //TIE BASE 1 & BASE 2 TOGETHER
  line(base.pos.x * scene_scale, base.pos.y * scene_scale, base2.pos.x * scene_scale, base2.pos.y * scene_scale);
  line(node1.pos.x * scene_scale, node1.pos.y * scene_scale, node1_b2.pos.x * scene_scale, node1_b2.pos.y * scene_scale);
  line(node2.pos.x * scene_scale, node2.pos.y * scene_scale, node2_b2.pos.x * scene_scale, node2_b2.pos.y * scene_scale);
  line(node3.pos.x * scene_scale, node3.pos.y * scene_scale, node3_b2.pos.x * scene_scale, node3_b2.pos.y * scene_scale);
  line(node4.pos.x * scene_scale, node4.pos.y * scene_scale, node4_b2.pos.x * scene_scale, node4_b2.pos.y * scene_scale);
  line(node5.pos.x * scene_scale, node5.pos.y * scene_scale, node5_b2.pos.x * scene_scale, node5_b2.pos.y * scene_scale);
  line(node6.pos.x * scene_scale, node6.pos.y * scene_scale, node6_b2.pos.x * scene_scale, node6_b2.pos.y * scene_scale);
  line(node7.pos.x * scene_scale, node7.pos.y * scene_scale, node7_b2.pos.x * scene_scale, node7_b2.pos.y * scene_scale);
  line(node8.pos.x * scene_scale, node8.pos.y * scene_scale, node8_b2.pos.x * scene_scale, node8_b2.pos.y * scene_scale);
  line(node9.pos.x * scene_scale, node9.pos.y * scene_scale, node9_b2.pos.x * scene_scale, node9_b2.pos.y * scene_scale);
  line(node10.pos.x * scene_scale, node10.pos.y * scene_scale, node10_b2.pos.x * scene_scale, node10_b2.pos.y * scene_scale);
  line(node11.pos.x * scene_scale, node11.pos.y * scene_scale, node11_b2.pos.x * scene_scale, node11_b2.pos.y * scene_scale);
  line(node12.pos.x * scene_scale, node12.pos.y * scene_scale, node12_b2.pos.x * scene_scale, node12_b2.pos.y * scene_scale);
  line(node13.pos.x * scene_scale, node13.pos.y * scene_scale, node13_b2.pos.x * scene_scale, node13_b2.pos.y * scene_scale);
  line(node14.pos.x * scene_scale, node14.pos.y * scene_scale, node14_b2.pos.x * scene_scale, node14_b2.pos.y * scene_scale);
  line(node15.pos.x * scene_scale, node15.pos.y * scene_scale, node15_b2.pos.x * scene_scale, node15_b2.pos.y * scene_scale);
  line(node16.pos.x * scene_scale, node16.pos.y * scene_scale, node16_b2.pos.x * scene_scale, node16_b2.pos.y * scene_scale);
  line(node17.pos.x * scene_scale, node17.pos.y * scene_scale, node17_b2.pos.x * scene_scale, node17_b2.pos.y * scene_scale);
  line(node18.pos.x * scene_scale, node18.pos.y * scene_scale, node18_b2.pos.x * scene_scale, node18_b2.pos.y * scene_scale);
  line(node19.pos.x * scene_scale, node19.pos.y * scene_scale, node19_b2.pos.x * scene_scale, node19_b2.pos.y * scene_scale);
  
  //TIE BASE 2 & BASE 3 TOGETHER
  line(base2.pos.x * scene_scale, base2.pos.y * scene_scale, base3.pos.x * scene_scale, base3.pos.y * scene_scale);
  line(node1_b2.pos.x * scene_scale, node1_b2.pos.y * scene_scale, node1_b3.pos.x * scene_scale, node1_b3.pos.y * scene_scale);
  line(node2_b2.pos.x * scene_scale, node2_b2.pos.y * scene_scale, node2_b3.pos.x * scene_scale, node2_b3.pos.y * scene_scale);
  line(node3_b2.pos.x * scene_scale, node3_b2.pos.y * scene_scale, node3_b3.pos.x * scene_scale, node3_b3.pos.y * scene_scale);
  line(node4_b2.pos.x * scene_scale, node4_b2.pos.y * scene_scale, node4_b3.pos.x * scene_scale, node4_b3.pos.y * scene_scale);
  line(node5_b2.pos.x * scene_scale, node5_b2.pos.y * scene_scale, node5_b3.pos.x * scene_scale, node5_b3.pos.y * scene_scale);
  line(node6_b2.pos.x * scene_scale, node6_b2.pos.y * scene_scale, node6_b3.pos.x * scene_scale, node6_b3.pos.y * scene_scale);
  line(node7_b2.pos.x * scene_scale, node7_b2.pos.y * scene_scale, node7_b3.pos.x * scene_scale, node7_b3.pos.y * scene_scale);
  line(node8_b2.pos.x * scene_scale, node8_b2.pos.y * scene_scale, node8_b3.pos.x * scene_scale, node8_b3.pos.y * scene_scale);
  line(node9_b2.pos.x * scene_scale, node9_b2.pos.y * scene_scale, node9_b3.pos.x * scene_scale, node9_b3.pos.y * scene_scale);
  line(node10_b2.pos.x * scene_scale, node10_b2.pos.y * scene_scale, node10_b3.pos.x * scene_scale, node10_b3.pos.y * scene_scale);
  line(node11_b2.pos.x * scene_scale, node11_b2.pos.y * scene_scale, node11_b3.pos.x * scene_scale, node11_b3.pos.y * scene_scale);
  line(node12_b2.pos.x * scene_scale, node12_b2.pos.y * scene_scale, node12_b3.pos.x * scene_scale, node12_b3.pos.y * scene_scale);
  line(node13_b2.pos.x * scene_scale, node13_b2.pos.y * scene_scale, node13_b3.pos.x * scene_scale, node13_b3.pos.y * scene_scale);
  line(node14_b2.pos.x * scene_scale, node14_b2.pos.y * scene_scale, node14_b3.pos.x * scene_scale, node14_b3.pos.y * scene_scale);
  line(node15_b2.pos.x * scene_scale, node15_b2.pos.y * scene_scale, node15_b3.pos.x * scene_scale, node15_b3.pos.y * scene_scale);
  line(node16_b2.pos.x * scene_scale, node16_b2.pos.y * scene_scale, node16_b3.pos.x * scene_scale, node16_b3.pos.y * scene_scale);
  line(node17_b2.pos.x * scene_scale, node17_b2.pos.y * scene_scale, node17_b3.pos.x * scene_scale, node17_b3.pos.y * scene_scale);
  line(node18_b2.pos.x * scene_scale, node18_b2.pos.y * scene_scale, node18_b3.pos.x * scene_scale, node18_b3.pos.y * scene_scale);
  line(node19_b2.pos.x * scene_scale, node19_b2.pos.y * scene_scale, node19_b3.pos.x * scene_scale, node19_b3.pos.y * scene_scale);

stroke(0);
fill(0, 0, 0);
strokeWeight(0.5);
circle(SpherePos.x * scene_scale, SpherePos.y * scene_scale, SphereRadius * 2 * scene_scale);

}



//---------------
//Vec 2 Library
//---------------

//Vector Library
//CSCI 5611 Vector 2 Library [Example]
// Stephen J. Guy <sjguy@umn.edu>

public class Vec2 {
  public float x, y;

  public Vec2(float x, float y) {
    this.x = x;
    this.y = y;
  }

  public String toString() {
    return "(" + x + "," + y + ")";
  }

  public float length() {
    return sqrt(x * x + y * y);
  }

  public float lengthSqr() {
    return x * x + y * y;
  }

  public Vec2 plus(Vec2 rhs) {
    return new Vec2(x + rhs.x, y + rhs.y);
  }

  public void add(Vec2 rhs) {
    x += rhs.x;
    y += rhs.y;
  }

  public Vec2 minus(Vec2 rhs) {
    return new Vec2(x - rhs.x, y - rhs.y);
  }

  public void subtract(Vec2 rhs) {
    x -= rhs.x;
    y -= rhs.y;
  }

  public Vec2 times(float rhs) {
    return new Vec2(x * rhs, y * rhs);
  }

  public void mul(float rhs) {
    x *= rhs;
    y *= rhs;
  }

  public void clampToLength(float maxL) {
    float magnitude = sqrt(x * x + y * y);
    if (magnitude > maxL) {
      x *= maxL / magnitude;
      y *= maxL / magnitude;
    }
  }

  public void setToLength(float newL) {
    float magnitude = sqrt(x * x + y * y);
    x *= newL / magnitude;
    y *= newL / magnitude;
  }

  public void normalize() {
    float magnitude = sqrt(x * x + y * y);
    x /= magnitude;
    y /= magnitude;
  }

  public Vec2 normalized() {
    float magnitude = sqrt(x * x + y * y);
    return new Vec2(x / magnitude, y / magnitude);
  }

  public float distanceTo(Vec2 rhs) {
    float dx = rhs.x - x;
    float dy = rhs.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

Vec2 interpolate(Vec2 a, Vec2 b, float t) {
  return a.plus((b.minus(a)).times(t));
}

float interpolate(float a, float b, float t) {
  return a + ((b - a) * t);
}

float dot(Vec2 a, Vec2 b) {
  return a.x * b.x + a.y * b.y;
}

// 2D cross product is a funny concept
// ...its the 3D cross product but with z = 0
// ... (only the resulting z component is not zero so we just store it as a scalar)
float cross(Vec2 a, Vec2 b) {
  return a.x * b.y - a.y * b.x;
}

Vec2 projAB(Vec2 a, Vec2 b) {
  return b.times(a.x * b.x + a.y * b.y);
}

Vec2 perpendicular(Vec2 a) {
  return new Vec2(-a.y, a.x);
}
