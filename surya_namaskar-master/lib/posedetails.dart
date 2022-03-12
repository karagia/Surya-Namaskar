//Just a class with all the required objects
//defined for each pose and also the list of
//all poses for the whole sequence of surya namaskar
class PoseDetails {
  late String process;
  late String breathing;
  late String precaution;
  late String benefits;
  late String name;
  late String image;
}

class PoseList {
  late List<PoseDetails> poses1;
  late List<PoseDetails> poses2;
  late List<PoseDetails> samAposes;
  late List<PoseDetails> poses4;
  late List<PoseDetails> poses5;

  PoseList() {
    initializePoses();
  }

  void initializePoses() {
    //Basic Surya Namaskar 12 poses
    poses1 = List<PoseDetails>.empty(growable: true);
    poses1.add(_createPoseIntro());
    poses1.add(_createPoseStart());
    poses1.add(_createPose1());
    poses1.add(_createPose2());
    poses1.add(_createPose3());
    poses1.add(_createPose4());
    poses1.add(_createPose5());
    poses1.add(_createPose6());
    poses1.add(_createPose7());
    poses1.add(_createPose8());
    poses1.add(_createPose9());
    poses1.add(_createPose10());
    poses1.add(_createPose11());
// Sivananda Sun Salutation ( Same as Basic but sped up)

    poses2 = List<PoseDetails>.empty(growable: true);
    poses2.add(_createPoseSivIntro());
    poses2.add(_createPoseStart());
    poses2.add(_createPose1());
    poses2.add(_createPose2());
    poses2.add(_createPose3());
    poses2.add(_createPose4());
    poses2.add(_createPose5());
    poses2.add(_createPose6());
    poses2.add(_createPose7());
    poses2.add(_createPose8());
    poses2.add(_createPose9());
    poses2.add(_createPose10());
    poses2.add(_createPose11());
    //Ashtanga Surya Namaskar A (10 poses)
    samAposes = List<PoseDetails>.empty(growable: true);
    samAposes.add(_createSamAPoseIntro());
    samAposes.add(_createSamAPoseStart());
    samAposes.add(_createSamAPose1());
    samAposes.add(_createSamAPose2());
    samAposes.add(_createSamAPose3());
    samAposes.add(_createSamAPose4());
    samAposes.add(_createSamAPose5());
    samAposes.add(_createSamAPose6());
    samAposes.add(_createSamAPose7());
    samAposes.add(_createSamAPose8());
    samAposes.add(_createSamAPose9());
//Ashtanga Surya Namaskar B (19 poses)
    poses4 = List<PoseDetails>.empty(growable: true);
    poses4.add(_createPoseSamBIntro());
    poses4.add(_createSamAPose9()); //Mountain Pose
    poses4.add(_createPoseSamB1()); //Awkward Chair
    poses4.add(_createSamAPose2()); //Standing Forward Bend Pose
    poses4.add(_createSamAPose3()); //Half Standing forward bend
    poses4.add(_createSamAPose4()); //Four Limbed Staff
    poses4.add(_createSamAPose5()); //Upward facing Dog
    poses4.add(_createSamAPose6()); //Downward Facing dog
    poses4.add(_createPoseSamB2()); //Warrior
    poses4.add(_createSamAPose4()); //Four Limbed Staff
    poses4.add(_createSamAPose5()); //Upward facing Dog
    poses4.add(_createSamAPose6()); //Downward Facing dog
    poses4.add(_createPoseSamB2()); //Warrior
    poses4.add(_createSamAPose4()); //Four Limbed Staff
    poses4.add(_createSamAPose5()); //Upward facing Dog
    poses4.add(_createSamAPose6()); //Downward Facing dog
    poses4.add(_createSamAPose3()); //Half Standing forward bend
    poses4.add(_createSamAPose2()); //Standing Forward Bend Pose
    poses4.add(_createPoseSamB1()); //Awkward Chair
    poses4.add(_createSamAPose9()); //Mountain Pose
    //Iyengar Surya Namaskar (12 poses)
    poses5 = List<PoseDetails>.empty(growable: true);
    poses5.add(_createIPoseIntro());
    poses5.add(_createSamAPose9()); //Mountain Pose
    poses5.add(_createSamAPose1()); //Raised Hands
    poses5.add(_createSamAPose2()); //Standing Forward Bend Pose
    poses5.add(_createSamAPose3()); //Half Standing forward bend
    poses5.add(_createSamAPose4()); //Four Limbed Staff
    poses5.add(_createSamAPose4()); //Four Limbed Staff
    poses5.add(_createSamAPose5()); //Upward facing Dog
    poses5.add(_createSamAPose6()); //Downward Facing dog
    poses4.add(_createSamAPose3()); //Half Standing forward bend
    poses4.add(_createSamAPose2()); //Standing Forward Bend Pose
    poses5.add(_createSamAPose1()); //Raised Hands
    poses4.add(_createSamAPose9()); //Mountain Pose
  }

  PoseDetails _createIPoseIntro() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Iyengar Surya Namaskar';
    newPose.image = 'images/I.Intro.PNG';
    newPose.process =
        """Iyenger’s way of Surya Namaskar is a swiftly transitioning flow of postures and shares similarity with the Hatha Surya namaskar.""";
    newPose.benefits =
        '''The pace of Iyengar’s Sun Salutation is somewhat between Hatha style and Ashtanga style. As Iyengar yoga style is uniquely known for its alignment and precision in poses, sun salutation here is a little more intense. But adding props into poses gives one variety of choices to modify the poses. ''';
    newPose.breathing = '';
    newPose.precaution =
        '''It works on strengthening the upper body and cardiovascular endurance.''';

    return newPose;
  }

  PoseDetails _createPoseSamBIntro() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Surya Namaskar B';
    newPose.image = 'images/B.Intro.PNG';
    newPose.process =
        """This sun salutation sequence is little intensified flow compare to the prior one. Like any other Ashtanga Vinyasa sequence, here each breath is accompanied by a movement in consecutive poses. B Surya Namaskar always is followed by the ‘A’ sequence before any Ashtanga Vinyasa class.""";
    newPose.benefits =
        '''The Sun Salutation B benefits are similar to the traditional Surya Namaskar. Once mastered, it can be modified further by adding different poses after reaching warrior pose in the series targeting the specific benefits.''';
    newPose.breathing = '';
    newPose.precaution =
        '''Sun Salutation B consists of 19 postures practice with high intensity and fast pace. Each pose is synced with the specific breathing pattern. The involvement of the strenuous poses in Sun Salutation B makes it a challenging sequence than A.''';

    return newPose;
  }

  PoseDetails _createPoseSivIntro() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Sivananda Sun Salutation';
    newPose.image = 'images/SivIntro.PNG';
    newPose.process =
        """Sivananda style sun salutation is similar to traditional Hatha sun salutation. Here twelve basic positions performed as one continuous exercise making a series of prostrations to the sun.""";
    newPose.benefits =
        '''In comparison to other styles of sun salutation, here the pace of flow from one pose to another is kept medium. It makes the Sivananda sun salutation suitable for beginners. The purpose of it is to warm up the body in preparation for longer asana practice.''';
    newPose.breathing = '';
    newPose.precaution =
        '''Sivananda should be performed in empty stomach. It is preferable to do this exercise in open, fresh air. However well ventilated rooms can also be used. People suffering from hernia, spinal disorders, high blood pressure should consult the doctor as well as competent Yoga instructor.''';

    return newPose;
  }

  PoseDetails _createSamAPoseIntro() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Surya Namaskar A';
    newPose.image = 'images/A.Intro.PNG';
    newPose.process =
        """Before beginning all Ashtanga Vinyasa series, 5 rounds of this sequence is considered sufficient to induce heat and stamina in the body. However, traditionally in Ashtanga yoga, 5 rounds of A sequence is followed by 5 rounds of B.""";
    newPose.benefits =
        '''It can be performed by any able-bodied person from 8 years to 80 years. It is especially beneficial for students. It enables them to achieve a) balanced physical growth, b) healthy and efficient body, c) balanced state of mind, d) enhanced work efficiency through concentration, alertness, memory development and emotional control.''';
    newPose.breathing = '';
    newPose.precaution =
        '''Surya Namaskar A should be performed in empty stomach. It is preferable to do this exercise in open, fresh air. However well ventilated rooms can also be used. People suffering from hernia, spinal disorders, high blood pressure should consult the doctor as well as competent Yoga instructor.''';

    return newPose;
  }

  PoseDetails _createSamAPoseStart() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Mountain Pose';
    newPose.image = 'images/A1.MounainPOSE.PNG';
    newPose.process =
        'Stand keeping the toes together and maintaining a small space between the heels. '
        'Stack the shoulders and hips over the feet. '
        'Lengthen your spine from your tailbone to the crown broadening the collar bones.'
        'The arms are released along the sides of the sides body with your palms facing forward.'
        'In tadasana, the body weight is evenly distributed around the four corners of the feet.';
    newPose.benefits = '';
    newPose.breathing = 'Inhale & Exhale.';
    newPose.precaution = '';
    return newPose;
  }

  PoseDetails _createSamAPose1() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Raised Hands Pose';
    newPose.image = 'images/A2.RaisedHandsPOSE.PNG';
    newPose.process =
        'From the basic Samasthiti alignment, sweep your arms upward.'
        'Join the palms overhead simultaneously stretching the neck upward, to look towards the thumbs.'
        'Involve slight backbend to stretch upward in raised hands pose.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'Do not bend your knees and elbows. Keep the upper arms'
        'and ears aligned throughout.';
    return newPose;
  }

  PoseDetails _createSamAPose2() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Standing Forward Bend';
    newPose.image = 'images/A3.StandingForwardBendPOSE.PNG';
    newPose.process =
        'Fold forward from the hip joint sending the hips backward. '
        'Reach the floor with the hands placing the hands beside the feet slightly bending the elbows.'
        'In this position the abdomen rest over the thighs.'
        'The head reaches the ground while the forehead is kept touched to the shins.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'Do not bend your knees and elbows. Keep the upper arms'
        'and ears aligned throughout.';
    return newPose;
  }

  PoseDetails _createSamAPose3() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Half Standing Forward Bend';
    newPose.image = 'images/A4.HalfStandingForwardPOSE.PNG';
    newPose.process = 'Straighten the arms placing the fingertips on the floor.'
        'Lift your torso, lengthening the spine and extending the head and chest.'
        'Keep the back flat and parallel to the floor.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'Try bending the knees and let the hands remain on the floor. '
        'This will maintain the integrity of the back. Also the hands can be placed on'
        ' the shins to lift into half forward bend.';
    return newPose;
  }

  PoseDetails _createSamAPose4() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Four Limbed Staff Pose';
    newPose.image = 'images/A5.FourLimbedStaffPOSE.PNG';
    newPose.process = 'Send your feet backward one at a time.'
        'Bend the elbows pressing the palms against the floor.'
        'Lower the torso closer to the floor bringing the entire body parallel to the floor'
        ' by pushing the toes to the ground.'
        'Stack the wrists under shoulders while getting into the four limbed staff pose.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'This pose can be modified bending the knees to the floor'
        ' if it’s difficult to balance the body only on the toes and hands.';
    return newPose;
  }

  PoseDetails _createSamAPose5() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Upward Facing Dog';
    newPose.image = 'images/A6.UpwardFacingDogPOSE.PNG';
    newPose.process =
        'Lower the torso to the floor and flatten the tops of your feet.'
        'Then, pressing the palms to the floor stretch forward extending the chest and spine upward.'
        'Uplift the thighs off the ground and throw the head backward assuming backbend stretching at the neck.'
        'Shoulders and the arms bear most of the weight.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'To arch the upper back in Urdhva Mukha Svanasana, keep the toes, feet, and buttocks activated while pushing the pelvis down. '
        'This can also be altered with the practice of cobra pose by the beginners.';
    return newPose;
  }

  PoseDetails _createSamAPose6() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Downward Facing Dog';
    newPose.image = 'images/A7.DownwardFacingDogPOSE.PNG';
    newPose.process = 'Roll back on your toes brining the heels to the floor.'
        'Straighten the arms pressing the palms to the floor.'
        'The head hangs down between the arms.'
        'This brings the body into an inverted V shape.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'In down-dog pose uplift your pelvis while bending the knees to lengthen the spine and sides of the rib-cage.';
    return newPose;
  }

  PoseDetails _createSamAPose7() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Standing Forward Bend';
    newPose.image = 'images/A8.StandingForwardBendPOSE.PNG';
    newPose.process = 'Lift the torso and raise the hands upwards.'
        'Join the palms in prayer pose overhead.'
        'Stretch the neck upward into a slight back bend engaging the spine and core muscles.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'In down-dog pose uplift your pelvis while bending the knees to lengthen the spine and sides of the rib-cage.';
    return newPose;
  }

  PoseDetails _createSamAPose8() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Raised Hands Pose';
    newPose.image = 'images/A9.RaisedHandPOSE.PNG';
    newPose.process = 'Lift the torso and raise the hands upwards.'
        'Join the palms in prayer pose overhead.'
        'Stretch the neck upward into a slight back bend engaging the spine and core muscles.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'In down-dog pose uplift your pelvis while bending the knees to lengthen the spine and sides of the rib-cage.';
    return newPose;
  }

  PoseDetails _createSamAPose9() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = ' Raised Hands Pose';
    newPose.image = 'images/A10.MountainPOSE.PNG';
    newPose.process =
        'Firming the feet to the ground, lower the arms by the sides of your sides.'
        'Relax your neck and shoulders by rolling the shoulders away from the ears.'
        'Come back again in initial Samasthiti pose ending one round of Sun salutation A.';
    newPose.benefits =
        'Ensures a) Elasticity of Lungs, b) Flexibility of Spine,'
        'c) Toning of muscles of abdomen, chest, forearms and upper arms.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'In down-dog pose uplift your pelvis while bending the knees to lengthen the spine and sides of the rib-cage.';
    return newPose;
  }

  PoseDetails _createPoseIntro() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Surya Namaskar';
    newPose.image = 'images/Surya.Intro.PNG';
    newPose.process =
        'Surya namaskar is a full-body energizer sequence that combines 12 yoga poses with rhythmic breathing and mantras salutation to the sun. Also named ‘The Ultimate Asana’ or ‘The King of Yoga’, Surya Namaskar literally translates as Sun Salutation.';
    newPose.benefits =
        '''It can be performed by any able-bodied person from 8 years to 80 years. It is especially beneficial for students. It enables them to achieve a) balanced physical growth, b) healthy and efficient body, c) balanced state of mind, d) enhanced work efficiency through concentration, alertness, memory development and emotional control.''';
    newPose.breathing = '';
    newPose.precaution =
        '''Surya Namaskar should be performed in empty stomach. It is preferable to do this exercise in open, fresh air. However well ventilated rooms can also be used. People suffering from hernia, spinal disorders, high blood pressure should consult the doctor as well as competent Yoga instructor.''';

    return newPose;
  }

  PoseDetails _createPoseStart() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Prayer Pose';
    newPose.image = 'images/Surya.Starting.PNG';
    newPose.process =
        'Stand upright bringing the feet together and arms by your sides.'
        'Slowly bend your elbows to join your palms in a Namaskar Mudra in front of the chest.'
        'Close your eyes, relax the entire body, and keep breathing normally.'
        'Keep your focus around the chest on Anahata Chakra and chant “Om Mitraya Namaha“.';
    newPose.benefits =
        'Prayer pose signifies the dedication towards the Sun and sun salutation.'
        'It calms the mind, develops patience, and relieves stress or anxiety.'
        'It activates the Anahata chakra and helps in balancing the emotions.';
    newPose.breathing = 'Inhale & Exhale';
    newPose.precaution = '';
    return newPose;
  }

  PoseDetails _createPose1() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Raised arms pose';
    newPose.image = 'images/Surya.1.PNG';
    newPose.process =
        'After exhaling deeply in prayer pose, inhale – separating the hands raising and stretching the arms over the head.'
        'Inhale, look up and bend the body slightly backward and push the pelvis forward'
        'Feel the stretch in the belly and expansion of the lungs.'
        'Chant Om Ravaye Namaha, while practicing hasta utthanasana.';
    newPose.benefits = 'Stretches the arms, abdomen, neck, and back muscles.'
        'Stimulates the Vishuddhi chakra and balances the thyroid and parathyroid gland and regulates the endocrine system.'
        'This posture is beneficial in improving digestion.'
        'It also relieves backaches, fatigue, and cures mild anxiety.';
    newPose.breathing = 'Inhale.';
    newPose.precaution = 'Keep the arms shoulder-width apart.';
    return newPose;
  }

  PoseDetails _createPose2() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Standing forward bend';
    newPose.image = 'images/Surya.2.PNG';
    newPose.process =
        'Exhale and fold forward from the hips placing the palms on the floor on either side of the feet.'
        'Try to bring the head as close as possible to the knees.'
        'The chest rests against the thighs holding this position.'
        'This is practiced while chanting, “Om Suryaya Namaha.”';
    newPose.benefits = 'Increases suppleness of spine, improves functioning of '
        'abdominal glands and digestive functions. Increases blood supply to '
        'facial muscles, eyes and brain.';
    newPose.breathing = 'Exhale.';
    newPose.precaution = 'While folding forward keep your spine erect.'
        'Instead of reaching the floor with palms, touching the fingertips to the floor would also do.';
    return newPose;
  }

  PoseDetails _createPose3() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Equestrian pose';
    newPose.image = 'images/Surya.3.PNG';
    newPose.process =
        'Inhale, step the right leg back pushing the foot as far as possible, placing the knee on the floor with tucked-in toes.'
        'Bend the left knee to place the foot on the floor.'
        'Press the palms or fingertips beside the left foot on the floor.'
        'Arch the back and tilt the head backward lifting the chin to look up.'
        'Here, chant Om Bhanave Namaha.';
    newPose.benefits =
        'It increases lung capacity and improves the respiratory system.'
        'On the energetic level, it works on Ajna Chakra and develops brain capacity.'
        'It cures constipation, indigestion, and sciatica.';
    newPose.breathing = 'Inhale.';
    newPose.precaution = 'Keep your internal focus on the eyebrow center.';
    return newPose;
  }

  PoseDetails _createPose4() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Four-limb pose';
    newPose.image = 'images/Surya.4.PNG';
    newPose.process =
        'Inhale drawing the left foot backward placing it beside the right.'
        'Exhale curling the toes in and pressing the hands on the floor lower the chest closer to the floor.'
        'Balance the entire body on the toes and hands.';
    newPose.benefits =
        'Strengthens palms, wrists and elbows. Muscles of forearms '
        'and upper arms are strengthened. Toes and floor muscles of the feet become'
        ' elastic and flexible.';
    newPose.breathing = 'Inhale.';
    newPose.precaution = 'Do not bend or arch up the neck and spine. Position '
        'the shoulders above the palms without bending the elbows.';
    return newPose;
  }

  PoseDetails _createPose5() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Eight Limbed pose';
    newPose.image = 'images/Surya.5.PNG';
    newPose.process =
        'Exhale and lower the knees to the floor and take your hips slightly back.'
        'Slide little forward placing the chest and chin on the floor.'
        'Therefore, only the toes, knees, chest, hands, and chin touch the floor.'
        'The buttocks, hips, and abdomen are kept raised.'
        'It is done chanting, Om Pushne Namaha.';
    newPose.benefits = 'Tones up functioning of lungs, abdominal glands, and '
        'digestive system. Ensures adequate supply of blood to head, facial '
        'muscles and eyes.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'Do not disturb the seat in order to reach forehead on '
        'the ground.';
    return newPose;
  }

  PoseDetails _createPose6() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Cobra pose';
    newPose.image = 'images/Surya.6.PNG';
    newPose.process =
        'Inhale, lower the hips, point the toes back, and slide the chest forward.'
        'Arch the back rolling the shoulders down.'
        'Slowly look up like the cobra raises its hood.'
        'Chant Om Pushne Namaha.';
    newPose.benefits = 'It improves the blood circulation.'
        'This pose stretches the shoulders, chest, back, and legs muscles.';
    newPose.breathing = 'Inhale.';
    newPose.precaution =
        'Do not lock the elbows while raising the torso and arching the back. ';
    return newPose;
  }

  PoseDetails _createPose7() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Downward Facing Dog';
    newPose.image = 'images/Surya.7.PNG';
    newPose.process =
        'Exhaling lift the hips and push them backward to place the heels on the floor and straighten the arms.'
        'Lower the head between the arms, forming an inverted V with the legs, arms, and back.'
        'Press the palms and heels on the floor, and take a few breaths.'
        'Chant Om Khagaya Namaha, during this pose';
    newPose.benefits = 'It activates the vishuddhi chakra.'
        'This inverted pose supplies oxygenated blood to the brain and calms the mind.'
        'It also improves body posture and helps in increasing height.';
    newPose.breathing = 'Exhale.';
    newPose.precaution = 'Do not rest the knees on the ground. Straighten '
        'the toes on the floor.';
    return newPose;
  }

  PoseDetails _createPose8() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Equestrian pose';
    newPose.image = 'images/Surya.8.PNG';
    newPose.process =
        'Breathe in to bring the right forward between the hands bending the knee.'
        'Simultaneously, lower the left knee to touch the floor, tuck the left toes in, and push the pelvis forward.'
        'Tilt the head backward to gaze up as in pose 4 reciting, “Om Adityaya Namaha.”';
    newPose.benefits = '';
    newPose.breathing = 'Inhale.';
    newPose.precaution = 'Do not bend your elbows and knees.';
    return newPose;
  }

  PoseDetails _createPose9() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Standing forward bend';
    newPose.image = 'images/Surya.9.PNG';
    newPose.process =
        'Exhaling, bring the right foot forward and bend forward at the hips.'
        'Bring the palms to the floor beside the feet as in pose 3.'
        'Recite the mantra, Om Savitre Namaha.';
    newPose.benefits =
        'Tones up the functioning of lungs, abdominal glands, and'
        'digestive system. Ensures adequate supply of blood to head, facial muscles'
        ' and eyes. Helps to relax the mind.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'Do not disturb the seat in order to make the forehead '
        'touch the ground.';
    return newPose;
  }

  PoseDetails _createPose10() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Raised arms pose';
    newPose.image = 'images/Surya.10.PNG';
    newPose.process =
        'Inhale to raising torso to stand erect, and stretch the arms upward.'
        'Transform from padahastasana to hasta utthanasana as described in pose 2.'
        'The mantra for this pose is Om Arkaya Namaha,';
    newPose.benefits = '';
    newPose.breathing = 'Exhale.';
    newPose.precaution = '';
    return newPose;
  }

  PoseDetails _createPose11() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'Prayer pose';
    newPose.image = 'images/Surya.11.PNG';
    newPose.process =
        'Exhaling, gently bring the arms down to join the palms in front of the chest.'
        'Chant “Om Bhaskaraya Namaha.”';
    newPose.benefits =
        'Increases suppleness of spine as it gets stretched, improves '
        'functioning of abdominal glands and digestive functions. Helps to improve '
        'memory, concentration and nervous system.';
    newPose.breathing = 'Exhale.';
    newPose.precaution =
        'Ensure that your arms and the ears are aligned. Do not'
        ' bend your knees.';
    return newPose;
  }

  PoseDetails _createPoseSamB1() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'The Awkward Chair';
    newPose.image = 'images/B.AwkwardChair.PNG';
    newPose.process =
        'Bend the knees so that the thighs lie parallel to the floor.'
        'Raise the arms joining the palms overhead and lower your buttocks pretending to be sitting on a chair.'
        'Look forward and push the heels to the floor without straining the knees.'
        'Hold the pose and take a few breaths here.';
    newPose.benefits =
        'Increases suppleness of spine as it gets stretched, improves '
        'functioning of abdominal glands and digestive functions. Helps to improve '
        'memory, concentration and nervous system.';
    newPose.breathing = 'Exhale.';
    newPose.precaution = '';
    return newPose;
  }

  PoseDetails _createPoseSamB2() {
    PoseDetails newPose = new PoseDetails();
    newPose.name = 'The Warrior I';
    newPose.image = 'images/B.Warrior.PNG';
    newPose.process = 'Step the right foot forward between the palms.'
        'Left foot is adjusted placing 45 degrees inwards.'
        'Bend your right leg bringing the thigh parallel to the floor.'
        'Raise your arms over head joining the palms.';
    newPose.benefits =
        'Increases suppleness of spine as it gets stretched, improves ';
    newPose.breathing = 'Inhale.';
    newPose.precaution = '';
    return newPose;
  }
}
