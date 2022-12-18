# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

courses = [{:name => 'Principles of Economics', :course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :time => 'MW 10:10-11:25', :preReqs => 'None', :description => 'How a market economy determines the relative prices of goods, factors of production, and the allocation of resources and the circumstances under which it does it efficiently. Why such an economy has fluctuations and how they may becontrolled.'},
           {:name => 'The Art of Engineering', :course => 'ENGI E1102 The Art of Engineering', :time => 'TR 10:10-11:25', :prof => 'David Vallancourt'},
           {:name => 'Masterpieces of Western Art', :course => 'HUMA UN1121 Masterpieces of Western Art', :time => 'MW 11:40-12:55'},
           {:name => 'Masterpieces of Western Music', :course => 'HUMA UN1123 Masterpieces of Western Music', :time => 'TR 11:40-12:55'},
           {:name => 'Advanced Programming', :course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :time => 'MW 12:15-1:25', :preReqs => '(COMS W3134) or (COMS W3137)', :description => 'C programming language and Unix systems programming. Also covers Git, Make, TCP/IP networking basics, C++ fundamentals.'},
           {:name => 'Discrete Math', :course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :time => 'MW 3:15-4:25', :preReqs => 'Any introductory course in computer programming', :description => 'Logic and formal proofs, sequences and summation, mathematical induction, binomial coefficients, elements of finite probability, recurrence relations, equivalence relations and partial orderings, and topics in graph theory (including isomorphism, traversability, planarity, and colorings).'},
           {:name => 'Engineering Software-as-a-Service', :course => 'COMS 4152 Engineering Software-as-a-Service', :prof => 'Junfeng Yang', :time => 'TR 8:40-9:55', :preReqs => 'None', :description => 'Modern software engineering concepts and practices including topics such as Software-as-a-Service, Service-oriented Architecture, Agile Development, Behavior-driven Development, Ruby on Rails, and Dev/ops'},
           {:name => 'Intermediate Microeconomics', :prof => 'Susan Elmes', :course => 'ECON UN3211 Intermediate Microeconomics', :time => 'TR 6:40-7:55', :preReqs => 'ECON UN1105 and MATH UN1101 and (MATH UN1201 or MATH UN1207)', :description => "The determination of the relative prices of goods and factors of production and the allocation of resources."},
           {:name => 'University Writing', :course => 'CC1010 University Writing', :prof => 'Gabrielle J Dacosta', :time => 'MW 8:40-9:55', :preReqs => 'None', :description => "ENGL CC/GS1010: University Writing, is a one-semester seminar designed to facilitate students’ entry into the intellectual life of the university by teaching them to become more capable and independent academic readers and writers. The course emphasizes habits of mind and skills that foster students’ capacities for critical analysis, argument, revision, collaboration, meta-cognition, and research. Students read and discuss essays from a number of fields, complete regular informal reading and writing exercises, compose several longer essays, and devise a research-based project of their own design."},
           {:name => 'Calculus I', :course => 'MATH UN1101 Calculus I', :time => 'MW 10:10-11:25'},
           {:name => 'Calculus II', :course => 'MATH UN1102 Calculus II', :time => 'TR 11:40-12:55'},
           {:course => 'APMA E2000 Multivariable Calculus for Engineers and Applied Scientists', :prof => 'Drew Youngren', :time => 'TR 8:40-9:55', :description => 'Differential and integral calculus of multiple variables. Topics include partial differentiation; optimization of functions of several variables; line, area, volume, and surface integrals; vector functions and vector calculus; theorems of Green, Gauss, and Stokes; applications to selected problems in engineering and applied science.'},
           {:course => 'PHYS UN1402 Introduction to Electricity/Magnetism & Optics', :time => 'MW 1:10-2:25'},
           {:course => 'PHYS UN1401 Introduction to Mechanics and Thermodynamics', :time => 'TR 10:10-11:25'},
           {:course => 'CHEM UN1403 General Chemistry I', :time => 'TR 6:10-7:25'},
           {:course => 'ENGI E1006 Computing for Engineering & Applied Scientists', :time => 'TR 1:10-2:25'},
           {:course => 'COMS W1004 Introduction to Computer Science', :time => 'MW 10:10-11:25'},
           {:course => 'SCNC 1100 Frontiers of Science', :time => 'TR 8:40-9:55'},
           {:course => 'HUMA CC1001 Masterpieces of Western Literature', :time => 'MW 4:10-5:25'},
           {:course => 'COCI CC1101 Contemporary Western Civilization', :time => 'TR 1:10-2:25'},
           {:course => 'ECON UN3412 Introduction to Econometrics', :time => 'MW 1:10-2:25'},
           {:course => 'ECON UN3212 Intermediate Macroeconomics', :time => 'TR 1:10-2:25'},
           {:course => 'COMS 3134 Data Structures in Java', :time => 'MW 4:10-5:25'},
           {:course => 'COMS 3251 Computational Linear Algebra', :time => 'TR 10:10-11:25'},
           {:course => 'COMS 3261 Computer Science Theory', :time => 'MW 8:40-9:55'},
           {:course => 'COMS 3827 Fundamentals of Computer Systems', :time => 'TR 4:10-5:25'},
           {:course => 'IEOR E3658 Probability for Engineers', :time => 'TR 1:10-2:25'},
           {:course => 'IEOR E3106 Stochastic Systems and Applications', :time => 'MW 5:40-6:55'},
           {:course => 'IEOR E3608 Foundations of Optimization', :time => 'TR 8:40-9:55'},
           {:course => 'IEOR E3404 Simulation', :time => 'MW 8:40-9:55'},
           {:course => 'IEOR E4307 Statistics and Data Analysis', :time => 'MW 4:10-5:25'},
           {:course => 'COMS 4111 Introduction to Databases', :time => 'F 12:00-2:30'},
           {:course => 'IEOR E3609 Advanced Optimization', :time => 'TR 10:10-11:25'},
           {:course => 'STAT UN1101 Introduction to Statistics', :time => 'TR 1:10-2:25' },
            {:course => 'STAT UN2102: Applied Statistical Computing', :time => 'TR 6:10-7:25'},
            {:course => 'STAT UN2103: Applied Linear Regression Analysis', :time => 'MW 10:10-11:25'},
            {:course => 'STAT UN2104: Applied Categorical Data Analysis', :time => 'MW 4:10-5:25'},
            {:course => 'STAT UN3105: Applied Statistical Methods', :time => 'TR 1:10-2:25'},
            {:course => 'STAT UN3106: Applied Data Mining', :time => 'MW 1:10-2:25'},
            {:course => 'MATH UN1201 Calculus III', :time => 'TR 1:10-2:25'},
            {:course => 'MATH UN2010 Linear Algebra', :time => 'MW 5:40-6:55'},
            {:course => 'STAT UN1201 Calculus-Based Introduction to Statistics', :time => 'MW 8:40-9:55'},
            {:course => 'STAT GU4203 Probability Theory', :time => 'MW 4:10-5:25'},
            {:course => 'STAT GU4204 Statistical Inference', :time => 'MW 10:10-11:25'},
            {:course => 'STAT GU4205 Linear Regression Models', :time => 'TR 4:10-5:25'},
            {:course => 'STAT GU4206 Statistical Computing and Introduction to Data Science', :time => 'MW 1:10-2:25'},
            {:course => 'STAT GU4207 Elementary Stochastic Processes', :time => 'TR 6:10-7:25'}
        ]

reviews = [{:course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :review => "If you are willing to put in the work, I highly recommend Professor Gulati's class. Most of the more negative reviews on here have some truth to them, as the assessments are difficult and there are many topics covered. In addition to this, some of the classes do run over, which would be my only true complaint about this course. Setting that aside, I have learned more from this class than I have learned from any other class I have taken at Columbia. The lectures are extremely engaging, and I can say with certainty that I and Gulati's other students understand the real principles behind economics better than students in other sections. This is especially important for me as I am an econ major, and I would recommend all econ majors to take this class for sure. That being said, I would advise against taking this class as a fun elective given the workload and would suggest a more seminar-style economics class.
    Overall, Gulati is a professor who definitely cares about his students and wants them to succeed, provided they are willing to help themselves as well.
    Workload:
    1 Midterm, 1 Comprehensive Final
    5 Team Problem Sets
    10 Quizzes, 2 of which are dropped."},

    {:course => 'ECON UN1105 Principles of Economics', :prof => 'Sunil Gulati', :review => "Overall, the content isnt overwhelming but there is a significant mismatch between the depth of the text against the professor's expectations and a variety of other underlying issues that will challenge even the best student's ability to succeed.
    For starters, each lecture intentionally ran 20-minutes over the slot, and students were forced to attend multiple weekend sessions without advanced notice. This dynamic added a minimum of 10-hours worth of lectures, all of which were 'fair game' for exams and not reflected on the syllabus. Arguing that people are 'soft' for griping about this added workload is asinine, especially during a pandemic when many students are attending from different time zones. In addition to two lectures a week, recitations are available - I would agree with others that the lectures and recitations were minimal value-adds, if only because the exams are set to a higher difficulty level.
    The five problem sets were straightforward and the ten pop quizzes were manageable. Reading is on the heavier side (~31 chapters), because of the aforementioned glut of content being crammed into a single semester. The added wrinkle is likely confined to the online environment, but this semester saw the first student in the history of the course finish with a perfect score on the quizzes, the highest mean in the history of the course on the final (which was also ~12 points higher than the midterm mean that was proctored through Proctorio, unlike the final), and an overall mean that was at least 7-points higher than previous semesters and I suspect also a record-breaker... All of which is open to interpretation, but is nonetheless especially frustrating when you have no guidance on the curve and the grades in Canvas aren't accurate. Your best bet is to take it P/D/F and uncover.
    All in all, regardless of your grade, others are correct to point out that you will learn A LOT in this course. Gulati is a good guy who loves Columbia and a fairly solid lecturer who moves fast but with a low degree of empathy to what seemed to be many students expressing difficulties with the pace and delivery of the course - his occasional stoppage tantrums over a few Zoom cameras turned off in a 300-person class bordered on the absurd. One other thing to keep in mind, this course is a feeder to the b-school concentration and the difficulty level is clearly by design - some of which is definitely overkill and part of the effort to curb grade inflation.
    Workload:
    Weekly Readings (2-3 Chapters), 10 Pop Quizzes, 5 Problem Sets, Midterm, Final"},

    {:course => 'ECON UN3211 Intermediate Microeconomics', :prof => 'Susan Elmes', :review => "Imagine trying to start a fire after your plane crashed and there's nothing but some kindling and a couple of matches. Now, in the beginning, you may be confused, breaking a few matches as Professor Elmes overwhelms you with the realization that you are maybe not as suited for this as you thought. So you forge onwards, giving up on starting a fire and instead start foraging for food. You do a couple problem sets and realize that like foraging for berries, it is difficult and time-consuming. Yet, they make you whole again somehow and you grow as a person. Soon the first midterm comes and this is the first critical storm that you must weather with the tent of confidence that you have built from your passable problem set grades and the breather of a quiz. Now, this is where the strong persist and the weak succumb. Yet, the midterm was relatively straightforward, and you know that to do well, you merely needed to what you had always done. Study, memorize and repeat. And so life seems better. The next quiz isn't too bad and the sun has started shining and you've figured out a routine. Your problem sets are manageable and though you may be up late one night trying to find the elusive proof for a question out of left-field, ultimately even if you don't get it, it probably doesn't matter, they don't grade all the problems. But then, the hurricane comes. The final storm hits and you feel confident, yet in reality, this is when those true troopers survive, the ones who were somehow bred to survive these catastrophic events float to the surface after a hurricane has drowned the merely adequate. Now whether you have floated to the top, or whether you have drowned, you will have learned something. If you have floated to the top, you have learned what the next three years of isolation in the wilderness of an econ major will be and have acquired the skills needed to survive until the rescue helicopter comes with a banking offer. But, if you have drowned, then there's always poli sci."},

    {:course => 'ECON UN3211 Intermediate Microeconomics', :prof => 'Susan Elmes', :review => "I have just finished Professor Elmes' micro this semester, and thought I might add sth new to the existing comments. To sum it up, this class is a great class with much hard work. So if you are only interested but not passionate about economics, I would recommend you to take micro from another professor. That being said, Professor Elmes is definitely the best choice for a intended econ major. She is a well-prepared and clear lecturer. She usually recommends us to read the textbook before coming to lectures, but after she explained them the concepts become much more easier to digest. She uses colored graphs, extensively explained formulas, and occasional handouts to help you understand the material in a crystal clear fashion. If you take notes systematically they will be enough for your preparation for the exams (though not for all the homework problems)."}, 

    {:course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :review => "What is there to say about AP that has not been said already? This class is very hard. The material was only slightly harder to grasp than Data Structures but the workload was about 1.5 times as large.
    Jae is an excellent lecturer. He is very efficient in class and doesn't go off on tangents. You will learn the material if you put in the effort, he isn't out to trick or 'get' you.
    Jae is very serious about cheating so definitely don't try any of that, look him up on Reddit if you do not believe me.
    Overall, you cannot avoid the class as a CS major/concentrator so you're going to have to take it anyway. The class isn't easy and is very annoying and frustrating at times, but is extremely well put together and taught."},
    {:course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :review => "The single worst academic experience I have had at Columbia. Jae turns his course into a lifestyle; expect to receive emails 24/7 (and not just from the listserv— he emailed us the day after Thanksgiving telling us to get back to AP) and to dedicate hours of your life to his labs, all while resisting the urge to Google your questions. Furthermore, Jae is not approachable whatsoever, and I found him rather arrogant and condescending. Final grades are not curved nicely, and are not indicative of how much you learn. However, to Jae's credit, his TAs are very good, and his teaching is decent. He is incredibly polarizing, as the below reviews show, and some people do like him.
    I wondered who hurt Jae, but it turns out it was none other than his own experience as an undergraduate at Columbia. I sure hope I don't turn out this cynical by the time I graduate..."},
    {:course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :review => "GOAT This man is a legend take his class!!"},
    {:course => 'COMS 3157 Advanced Programming', :prof => 'Jae Woo Lee', :review => "AP is a very good and well-organized class. Labs are not too hard but tedious and the instruction in the lab is sometimes not clear. Exam is not that hard. Don't listen to the rumor, you can ace the exams if you really understand the material inside out. Jae's teaching is clear and to the point. However Jae is a terrible human being. He is disrespectful to some students even though some of them are already working and have possibly accomplished much more than Jae in other fields.  "},
    {:course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :review => "Ansaf is one of the kindest professors you’ll meet at Columbia, but she’s a mediocre teacher; she’s too prone to glossing over the meat of the material. Everything you need to know can be easily found in the lecture notes she posts at the end of each week, so attending lectures is pointless. I think attendance trickled down to 20-30 students after the midterm.
    I will say that the course felt rushed near the end. Discrete was recently bumped up from 3 credits to 4 credits because the syllabus was revised to add more targeted prep for classes like AI. However, it’s clear that Ansaf was not ready for this change. We went through the first three chapters at a snail’s pace before the midterm, and then Ansaf had to cancel a full week’s worth of lectures because she got COVID. As a result, the second half of the semester felt strapped for time, and we blitzed through the rest of the material. It got to the point where I don’t feel adequately prepared for classes that require Discrete as a prerequisite even though I got an A in this class.
    On the TAs: it seemed like most of them were TAing for the first time. Piazza posts took forever to get answered, and it usually took a few weeks for graded work to be returned. I never attended their Friday recitations, but the problems they made were generally harder than the homework or exams. Being able to solve these problems means that you truly understand the material, so be sure to do them if you know you’ll need Discrete in the future.
    At the end of the day, I’m not sure if I can recommend Ansaf’s version of Discrete. It’s one of the easiest classes at Columbia and doesn’t require a ton of work, but don’t expect it to sufficiently prepare you for higher-level math or theoretical CS classes. If you have the option of testing out, I think doing so and taking a more advanced course in its place would be a better use of your time unless you desperately need the GPA boost."},
    {:course => 'COMS 3203 Discrete Math', :prof => 'Ansaf Salleb-Aboussai', :review => "Hands down the most annoying class I've taken so far. A lot of students are saying this is an easy class but I have to respectfully disagree. I will agree with one thing from other reviews: Prof Ansaf is a really nice person.
    Grading literally took ages, with no communication from the TAs or the Prof on why it took nearly a month to get our assignments graded. This made it difficult to see what I needed to work on, and also strategize if I should skip the last assignment or not (since the lowest assignment is dropped)."},
     
    {:course => 'COMS 4152 Engineering Software-as-a-Service', :prof => 'Junfeng Yang', :review => "Workload: 5 coding assignments, 1 group project
    Overall a really nice class. I personally found the coding assignments really difficult, but going to OH really helps. I managed to catch up with my grades in the latter half with the group project. The professor is really sweet but (and I hate to say this) you would be fine not to attend any classes. Just watch a Ruby on Rails tutorial before the course starts and read all of the material on Codio before you start assignments (this part is especially important). The entire course focuses more on testing rather than teaching you the language, but I think most students in the class hated testing even though it'd probably be a very useful skill to have in the industry. Just remember to watch a few tutorial before the course starts and you'd be fine"}
        
]

school_reqs = [{:school => 'SEAS', :course => 'CC1010 University Writing'},
               {:school => 'SEAS', :course => 'HUMA UN1121 Masterpieces of Western Art'},
               {:school => 'SEAS', :course => 'HUMA UN1123 Masterpieces of Western Music'},
               {:school => 'SEAS', :course => 'HUMA CC1001 Masterpieces of Western Literature'},
               {:school => 'SEAS', :course => 'COCI CC1101 Contemporary Western Civilization'},
               {:school => 'SEAS', :course => 'ECON UN1105 Principles of Economics'},
               {:school => 'SEAS', :course => 'ENGI E1102 The Art of Engineering'},
                {:school => 'SEAS', :course => 'MATH UN1101 Calculus I'},
                {:school => 'SEAS', :course => 'MATH UN1102 Calculus II'},
                {:school => 'SEAS', :course => 'APMA E2000 Multivariable Calculus for Engineers and Applied Scientists'},
                {:school => 'SEAS', :course => 'PHYS UN1401 Introduction to Mechanics and Thermodynamics'},
                {:school => 'SEAS', :course => 'PHYS UN1402 Introduction to Electricity/Magnetism & Optics'},
                {:school => 'SEAS', :course => 'CHEM UN1403 General Chemistry I'},
                {:school => 'SEAS', :course => 'ENGI E1006 Computing for Engineering & Applied Scientists'},
                {:school => 'SEAS', :course => 'COMS W1004 Introduction to Computer Science'},
                {:school => 'CC', :course => 'CC1010 University Writing'},
               {:school => 'CC', :course => 'HUMA UN1121 Masterpieces of Western Art'},
               {:school => 'CC', :course => 'HUMA UN1123 Masterpieces of Western Music'},
               {:school => 'CC', :course => 'SCNC 1100 Frontiers of Science'},
               {:school => 'CC', :course => 'HUMA CC1001 Masterpieces of Western Literature'},
               {:school => 'CC', :course => 'COCI CC1101 Contemporary Western Civilization'}
               ]

major_reqs = [
                {:subject => 'Economics', :course => 'MATH UN1101 Calculus I'}, 
                {:subject => 'Economics', :course => 'MATH UN1102 Calculus II'},
                {:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
                {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'},
                {:subject => 'Economics', :course => 'ECON UN3212 Intermediate Macroeconomics'},
                {:subject => 'Economics', :course => 'ECON UN3412 Introduction to Econometrics'},
                {:subject => 'Computer Science', :course => 'ENGI E1006 Computing for Engineering & Applied Scientists'},
                {:subject => 'Computer Science', :course => 'COMS W1004 Introduction to Computer Science'},
                {:subject => 'Computer Science', :course => 'COMS 3134 Data Structures in Java'},
                {:subject => 'Computer Science', :course => 'COMS 3157 Advanced Programming'},
                {:subject => 'Computer Science', :course => 'COMS 3203 Discrete Math'},
                {:subject => 'Computer Science', :course => 'COMS 3251 Computational Linear Algebra'},
                {:subject => 'Computer Science', :course => 'COMS 3261 Computer Science Theory'},
                {:subject => 'Computer Science', :course => 'COMS 3827 Fundamentals of Computer Systems'},
                {:subject => 'Statistics', :course => 'MATH UN1201 Calculus III'},
                {:subject => 'Statistics', :course => 'MATH UN2010 Linear Algebra'},
                {:subject => 'Statistics', :course => 'ENGI E1006 Computing for Engineering & Applied Scientists'},
                {:subject => 'Statistics', :course => 'STAT UN1201 Calculus-Based Introduction to Statistics'},
                {:subject => 'Statistics', :course => 'STAT GU4203 Probability Theory'},
                {:subject => 'Statistics', :course => 'STAT GU4204 Statistical Inference'},
                {:subject => 'Statistics', :course => 'STAT GU4205 Linear Regression Models'},
                {:subject => 'Statistics', :course => 'STAT GU4206 Statistical Computing and Introduction to Data Science'},
                {:subject => 'Statistics', :course => 'STAT GU4207 Elementary Stochastic Processes'},
                {:subject => 'Operations Research', :course => 'IEOR E3658 Probability for Engineers'},
                {:subject => 'Operations Research', :course => 'IEOR E3106 Stochastic Systems and Applications'},
              {:subject => 'Operations Research', :course => 'IEOR E3608 Foundations of Optimization'},
              {:subject => 'Operations Research', :course => 'IEOR E4307 Statistics and Data Analysis'},
              {:subject => 'Operations Research', :course => 'COMS 4111 Introduction to Databases'},
              {:subject => 'Operations Research', :course => 'IEOR E3404 Simulation'},
              {:subject => 'Operations Research', :course => 'IEOR E3609 Advanced Optimization'}
            ]

minor_reqs = [{:subject => 'Economics', :course => 'ECON UN1105 Principles of Economics'},
              {:subject => 'Economics', :course => 'ECON UN3211 Intermediate Microeconomics'},
              {:subject => 'Economics', :course => 'ECON UN3212 Intermediate Macroeconomics'},
              {:subject => 'Economics', :course => 'ECON UN3412 Introduction to Econometrics'},
              {:subject => 'Operations Research', :course => 'IEOR E3658 Probability for Engineers'},
              {:subject => 'Operations Research', :course => 'IEOR E3106 Stochastic Systems and Applications'},
              {:subject => 'Operations Research', :course => 'IEOR E3608 Foundations of Optimization'},
              {:subject => 'Operations Research', :course => 'IEOR E3404 Simulation Modeling and Analysis'},
              {:subject => 'Computer Science', :course => 'COMS W1004 Introduction to Computer Science'},
                {:subject => 'Computer Science', :course => 'COMS 3134 Data Structures in Java'},
                {:subject => 'Computer Science', :course => 'COMS 3157 Advanced Programming'},
                {:subject => 'Computer Science', :course => 'COMS 3203 Discrete Math'},
                {:subject => 'Computer Science', :course => 'COMS 3251 Computational Linear Algebra'},
                {:subject => 'Computer Science', :course => 'COMS 3261 Computer Science Theory'},
                {:subject => 'Computer Science', :course => 'COMS 3827 Fundamentals of Computer Systems'},
                {:subject => 'Statistics', :course => 'STAT UN1101 Introduction to Statistics' },
                {:subject => 'Statistics', :course => 'STAT UN2102: Applied Statistical Computing'},
                {:subject => 'Statistics', :course => 'STAT UN2103: Applied Linear Regression Analysis'},
                {:subject => 'Statistics', :course => 'STAT UN2104: Applied Categorical Data Analysis'},
                {:subject => 'Statistics', :course => 'STAT UN3105: Applied Statistical Methods'},
                {:subject => 'Statistics', :course => 'STAT UN3106: Applied Data Mining'}
            ]

courses.each do |course|
    Course.create!(course)
end

reviews.each do |review|
    Coursereview.create!(review)
end

school_reqs.each do |sr|
    Schoolreq.create!(sr)
end

major_reqs.each do |mjr|
    Majorreq.create!(mjr)
end

minor_reqs.each do |mnr|
    Minorreq.create!(mnr)
end