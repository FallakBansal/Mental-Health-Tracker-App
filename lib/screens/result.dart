import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (resultScore >= 1)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Set attainable goals',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'A lengthy to-do list may be so weighty that you’d rather do nothing. Instead of compiling a long list of tasks, consider setting one or two smaller goals.\n When you’ve done a small thing, set your eyes on another small thing, and then another. This way, you have a list of tangible achievements and not an untouched to-do list'),
                    ),
                  ],
                ),
              ),
            if (resultScore >= 10)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Reward your efforts',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'All goals are worthy of recognition, and all successes are worthy of celebration. When you achieve a goal, do your best to recognize it.\n You may not feel like celebrating with a cake and confetti, but recognizing your own successes can be a very powerful weapon against depression’s negative weight.\n The memory of a job well-done may be especially powerful against negative talk and overgeneralization.'),
                    ),
                  ],
                ),
              ),
            if (resultScore >= 20)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Do something you enjoy…',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Depression can push you to give into your fatigue. It may feel more powerful than happy emotions.\nTry to push back and do something you love — something that’s relaxing, but energizing. It could be playing an instrument, painting, hiking, or biking'),
                    ),
                  ],
                ),
              ),
            if (resultScore >= 30)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Incorporating meditation may help ground your thoughts',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'Stress and anxiety can prolong your depression symptoms. Finding relaxation techniques can help you lower stress and invite more joy and balance into your day.\nResearch suggests activities like meditation, yoga, deep breathing, and even journaling may help you improve your sense of well-being and feel more connected to what’s happening around you'),
                    ),
                  ],
                ),
              ),
            if (resultScore >= 40)
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Consider clinical treatment',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                          'You may also find it helpful to speak to a professional about what you’re going through. A general practitioner may be able to refer you to a therapist or other specialist.\nThey can assess your symptoms and help develop a clinical treatment plan tailored to your needs. This may include traditional options, such as medication and therapy, or alternative measures, such as acupuncture.\n\nFinding the right treatment for you may take some time, so be open with your provider about what is and isn’t working. Your provider will work with you to find the best option.'),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
