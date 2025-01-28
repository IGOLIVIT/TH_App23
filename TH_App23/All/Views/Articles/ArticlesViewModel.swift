//
//  ArticlesViewModel.swift
//  TH_App23
//
//  Created by IGOR on 28/01/2025.
//

import SwiftUI

final class ArticlesViewModel: ObservableObject {
    
    @Published var isDetail: Bool = false
    @Published var isDelete: Bool = false
    @Published var isSettings: Bool = false
    
    @Published var selectedCourse: ArticlesModel?

    @Published var articles: [ArticlesModel] = [
        
        ArticlesModel(title: "Creative Wedding Vows Ideas", information: """
"Writing your wedding vows is a deeply personal and meaningful process that allows you to express your love, commitment, and dreams for the future. However, it can be overwhelming to find the right words. Here are some creative ideas to help you craft vows that will make your special day even more memorable.
                      1. Start with a Story
                      Begin your vows with a short story that captures a defining moment in your relationship. This could be the first time you met, a shared adventure, or a time when you realized your partner was "the one." Sharing a personal anecdote makes your vows unique and heartfelt. For example, "I knew I loved you when we spent hours talking under the stars, sharing our dreams for the future."
                      2. Incorporate Your Promises
                      Wedding vows are a chance to express your promises to your partner. Go beyond the traditional "for better or worse" and include specific commitments that reflect your relationship. For instance, "I promise to always save the last piece of pizza for you" or "I vow to support your dreams as if they were my own."
                      3. Add Humor
                      A touch of humor can make your vows unforgettable. Think of inside jokes or funny quirks in your relationship. For example, "I promise to always pretend to listen when you explain fantasy football" or "I vow to be your biggest cheerleader, even if it means watching every single episode of your favorite show."
                      4. Look to Literature or Music
                      Draw inspiration from poetry, books, or songs that resonate with you. Borrowing a meaningful quote or lyric can beautifully enhance your vows. For example, "As Jane Austen wrote, 'You have bewitched me, body and soul,' and I am forever yours."
                      5. End with Your Vision for the Future
                      Conclude your vows by sharing your hopes for your life together. Whether it's building a family, traveling the world, or simply growing old side by side, this future vision will bring your vows full circle. For instance, "I look forward to growing with you, laughing with you, and loving you every step of the way."
                      Remember, your vows should reflect your authentic self and your unique bond with your partner. Practice reading them aloud and don’t worry about perfection—speaking from the heart is what matters most.
"""),
        ArticlesModel(title: "Essential Items to Have on Your Wedding Day", information: """
Your wedding day is one of the most important days of your life, and being prepared can help ensure everything goes smoothly. Here’s a list of essential items you should have on hand to avoid last-minute stress and handle any unexpected situations.

1. Emergency Kit
Prepare a small emergency kit with essentials like safety pins, sewing needles, clear nail polish, and double-sided tape. These can be lifesavers for fixing wardrobe malfunctions or broken zippers. Don’t forget items like a stain remover pen and tissues for unexpected spills or emotional tears.

2. Comfortable Shoes
While your wedding shoes may be gorgeous, they might not be the most comfortable. Bring a pair of flats or sneakers to change into during the reception. Dancing and mingling will be much more enjoyable without sore feet.

3. Snacks and Water
Wedding days are long, and with all the excitement, you may forget to eat. Pack light snacks like granola bars, nuts, or fruit to keep your energy up. Stay hydrated with plenty of water, especially if your ceremony or photos are outdoors.

4. Backup Makeup and Hair Products
Keep a small bag with touch-up essentials like lipstick, powder, hairpins, and hairspray. This will help you maintain your look throughout the day and be camera-ready at all times.

5. Printed Copies of Key Information
Have printed copies of your schedule, vendor contracts, and contact information. If there’s a delay or miscommunication, you’ll have everything you need to quickly resolve the issue.

6. Charged Phone and Portable Charger
Your phone can be useful for last-minute coordination or emergencies, but don’t let it distract you from the moment. A portable charger ensures you stay connected throughout the day.

7. First Aid Kit
Include basics like band-aids, pain relievers, and antacids. These small items can save the day if you or your guests encounter minor issues.

8. Personal Items for Sentimentality
Bring items that hold sentimental value, like a family heirloom, handwritten notes, or a small gift for your partner. These can add a personal and emotional touch to your special day.

Being prepared will help you stay calm and focus on the joy of your wedding day. With this checklist, you’ll be ready for anything that comes your way!
"""),
        
        ArticlesModel(title: "Unique Surprise Ideas for Your Wedding Day", information: """
Adding a special surprise to your wedding day can make the event even more magical and unforgettable. Whether it’s for your partner, guests, or both, here are some creative surprise ideas to make your big day truly special.

1. A Heartfelt Video Message
Before the wedding, secretly record a video message for your partner. This can include a collection of meaningful moments, a personal message about your love story, or clips from friends and family sharing their best wishes. Have it played during the reception for a touching surprise.

2. A Live Musical Performance
Surprise your partner or guests with a live music performance. You can hire a musician to play your partner’s favorite song or, if you’re musically inclined, perform it yourself. Whether it’s during the ceremony, the first dance, or as a special dedication, live music adds a personal and emotional touch.

3. A Private Love Letter Exchange
Before the ceremony, arrange for a private moment where you and your partner exchange handwritten love letters. This intimate moment can be captured by your photographer without seeing each other, making for a beautiful and emotional memory.

4. A Midnight Snack Bar
After hours of dancing and celebrating, guests will appreciate a fun late-night snack bar. Consider serving comfort foods like mini pizzas, burgers, or even a dessert station with donuts and cookies. This unexpected treat will be a hit!

5. A Fireworks or Lantern Release
End your wedding night with a stunning fireworks display or a sky lantern release. Fireworks create a grand finale, while lanterns offer a more romantic and intimate moment. Be sure to check local regulations before planning this surprise.

A well-planned surprise can make your wedding even more memorable, leaving a lasting impression on your partner and guests. Choose something that reflects your love story and makes the day even more magical!
"""),
        
        ArticlesModel(title: "Wedding Day Emergency Plan – Be Ready for Anything", information: """
No matter how well you plan your wedding, unexpected issues can arise. Having a solid emergency plan will help you stay calm and enjoy your special day. Here are some common wedding day emergencies and how to handle them.

1. Weather Surprises
If your wedding is outdoors, always have a backup plan. Rent a tent, prepare umbrellas for guests, and check the weather forecast. For summer weddings, have fans and plenty of water available to keep guests comfortable.

2. Dress or Suit Malfunctions
A broken zipper, a torn hem, or a stain on your dress can be stressful. Keep a small sewing kit, safety pins, double-sided tape, and stain remover wipes in an emergency bag. Assign a bridesmaid or groomsman to help with any quick fixes.

3. Vendor Issues
If a vendor cancels last minute or is running late, have a list of backup contacts. Consider hiring a wedding coordinator who can handle vendor-related issues while you focus on enjoying your day.

4. Late or Lost Guests
Some guests may have trouble finding the venue. Share clear directions, parking details, and a contact person’s number beforehand. You can also create a group chat for last-minute questions.

5. Health Emergencies
A guest feeling unwell, a minor injury, or an allergic reaction can happen. Have a first aid kit on hand with band-aids, pain relievers, and allergy medication. Make sure the venue staff knows of any dietary restrictions or medical needs in advance.

6. Timeline Delays
It’s common for weddings to run late. Build extra time into your schedule for unexpected delays. If things do run behind, stay flexible—your guests will understand, and your happiness is what truly matters.

7. Emotional Overwhelm
It’s normal to feel nervous or emotional. Take deep breaths, have a quiet moment with your partner, or delegate tasks to your wedding party if you feel overwhelmed. Remember, this day is about celebrating love, not perfection!

Being prepared for small hiccups can help you stay stress-free and fully enjoy your wedding. With a little planning, you can handle any surprise that comes your way!
"""),
        
        ArticlesModel(title: "Interesting Wedding Traditions from Around the World", information: """
Weddings are celebrated with unique customs in every culture, often rich in history and meaning. Here are some fascinating wedding traditions from around the world that you can incorporate into your own celebration to make it even more special.

1. The 'Something Borrowed, Something Blue' (USA/UK)
In many Western cultures, brides follow the tradition of wearing "something borrowed, something blue" to bring good luck and happiness in their marriage. Something borrowed symbolizes the love and support of family and friends, while the blue is a symbol of fidelity and love. Incorporating this tradition into your attire is a sweet way to honor loved ones and start your new life with good fortune.

2. Jumping the Broom (African-American Tradition)
The tradition of jumping the broom has deep roots in African-American culture, originally dating back to enslaved African people in the U.S. who were not allowed to legally marry. Jumping the broom symbolizes the couple’s commitment to one another and the beginning of their new life together. Today, it’s often done during the ceremony, with the couple jumping over a broom to symbolize the sweeping away of past troubles and the start of a new journey.

3. Tying the Knot (Scotland/Ireland)
In Scottish and Irish weddings, the practice of "tying the knot" is a symbolic gesture during the ceremony, where the couple’s hands are bound together with a cord or ribbon. This act represents the couple's unity and the unbreakable bond of marriage. Some modern couples even choose to use a special family heirloom or a personal ribbon to make the ritual even more meaningful.

4. The Tea Ceremony (China)
In Chinese weddings, a tea ceremony is a significant tradition where the bride and groom serve tea to their elders, symbolizing respect, gratitude, and the joining of two families. In some regions, the tea is served to parents, grandparents, and other respected family members. The act of offering tea is also thought to bring the couple good fortune and blessings for their marriage.

5. The Henna Ceremony (India, Middle East)
The henna ceremony is a beautiful and colorful tradition in many South Asian and Middle Eastern weddings. The bride’s hands and feet are intricately decorated with henna designs, symbolizing good luck, happiness, and protection from evil spirits. It’s often a joyous pre-wedding event with music, dancing, and plenty of laughter. The designs can vary, with some intricate patterns representing fertility and prosperity for the couple.

6. The Wedding Knot (Mexico)
In Mexico, a common wedding tradition involves the couple tying a knot with a ribbon or cloth during the ceremony. Known as "El Lazo," this ritual symbolizes the couple’s unity and their commitment to one another. After the ceremony, the knot is often kept as a reminder of their love and devotion.

7. The Shoe Game (Poland)
In Polish weddings, a popular game is called "The Shoe Game," where the couple sits back to back, each holding one of their own shoes and one of their partner’s shoes. A series of questions are asked, and the couple must raise the shoe that corresponds to their answer. It’s a fun way to involve guests and showcase the couple’s personalities and knowledge of each other.

These wedding traditions add a rich cultural touch to your celebration, and you can choose the ones that resonate with you and your partner. Incorporating meaningful customs can make your wedding day even more unforgettable!


"""),
        
            ArticlesModel(title: "How to Plan the Perfect Honeymoon", information: """
Your honeymoon is the first trip you'll take together as a married couple, so it’s important to plan it carefully to ensure it’s everything you dream of. Whether you're looking for relaxation, adventure, or a little bit of both, here are some tips for planning the perfect honeymoon.

1. Decide on the Type of Honeymoon
The first step in planning your honeymoon is deciding what kind of trip you want. Do you prefer a relaxing beach getaway, an adventurous exploration of nature, or a cultural city experience? Discuss with your partner what type of vacation suits both of your interests, whether it’s lounging on sandy beaches, hiking through the mountains, or visiting historic landmarks. Your honeymoon should reflect your shared passions and preferences.

2. Set a Budget
It’s essential to determine your honeymoon budget early on. Consider your overall wedding expenses, as well as any savings you’ve set aside for the trip. While some destinations may be more expensive than others, it’s important to be realistic about what you can afford. Setting a budget helps you narrow down your options and avoid any stress later on. Don't forget to include expenses for travel, accommodations, meals, activities, and souvenirs.

3. Choose the Right Destination
Once you’ve decided on the type of honeymoon you want and set a budget, research destinations that align with your vision. Think about the season, weather, and any travel restrictions that may apply. Popular honeymoon destinations include tropical islands like Hawaii, Bali, or the Maldives for beach lovers, or European cities like Paris, Rome, or Venice for those who enjoy history and culture. For adventurous couples, destinations like New Zealand, Costa Rica, or the Swiss Alps offer thrilling outdoor activities.

4. Consider the Timing
Timing is crucial when planning your honeymoon. It’s often tempting to take the honeymoon immediately after the wedding, but it can also be beneficial to take some time to rest and recover before heading off. Consider how long you’ll need to adjust after your wedding and whether it’s better to plan the honeymoon for a few weeks after the big day. Keep in mind that some honeymoon destinations are more affordable during off-peak seasons.

5. Plan Activities for Both of You
While you may want to relax on the beach or spa all day, it’s important to balance relaxation with fun and adventure. Plan a mix of activities that both of you will enjoy. If you're staying in a cultural destination, take a cooking class, visit local attractions, or explore the local nightlife. If you're in a nature-focused location, go hiking, snorkeling, or take a scenic bike ride. A good balance of relaxation and adventure ensures that both of you have a memorable and fulfilling experience.

6. Book in Advance
To secure the best deals on flights, accommodations, and activities, make sure to book your honeymoon well in advance. Popular destinations and peak travel seasons often fill up quickly, so the earlier you book, the more options you'll have. Booking in advance also helps you stay within your budget and avoid last-minute stress.

7. Don’t Forget to Pack Smart
Make sure to pack everything you’ll need for your honeymoon, but try not to overpack. Check the weather for your destination and pack accordingly. If you're heading to a tropical climate, pack lightweight clothing, sunscreen, and swimwear. For an active honeymoon, bring comfortable shoes and outdoor gear. Don’t forget any necessary documents such as passports, travel insurance, or itinerary details.

Planning your honeymoon together can be a fun part of the wedding process, and with a little effort, you can make it a relaxing and unforgettable experience. Whatever destination you choose, the goal is to enjoy quality time together and start your marriage with a memorable adventure!
"""),
        
        ArticlesModel(title: "Tips for Dealing with Wedding Day Stress", information: """
Your wedding day is one of the most anticipated and important days of your life. However, it’s also a day that can bring stress and anxiety. Between last-minute details, managing family dynamics, and ensuring everything goes smoothly, it can feel overwhelming. Here are some tips to help you manage wedding day stress and enjoy every moment.

1. Plan Ahead and Stay Organized
One of the best ways to reduce stress on your wedding day is to plan ahead. Create a detailed timeline for the day, outlining when vendors arrive, when you need to get ready, and when different activities (like the ceremony and reception) will take place. Share this timeline with your wedding party and key contacts so everyone is on the same page. The more organized you are beforehand, the less you'll have to worry about on the big day.

2. Delegate Tasks to Trusted People
You don’t have to do everything yourself. Delegating tasks to family members, bridesmaids, groomsmen, or your wedding planner will give you the freedom to focus on the celebration. Have someone in charge of managing vendors, another person who can assist with last-minute touch-ups, and someone who can handle any unexpected issues. By trusting others with the details, you can relax and enjoy the day.

3. Take Breaks and Breathe
Wedding days can be long and intense. It’s important to take breaks throughout the day to center yourself. Whether it’s a few minutes of quiet time in a private space or a deep breathing exercise, these moments will help you stay calm and grounded. Don’t forget to drink water and have a snack if needed to keep your energy levels up.

4. Stay Present and Enjoy the Moment
While it’s easy to get caught up in the details, remember that the most important part of your wedding day is celebrating your love with your partner and your loved ones. Try to stay present and enjoy the special moments, whether it’s the exchange of vows, the first dance, or sharing a laugh with your guests. Focus on the joy of the occasion and let go of perfection.

5. Let Go of Perfectionism
No wedding is ever perfect, and trying to achieve perfection will only lead to stress. Things may go wrong, but it’s important to remember that your guests won’t notice the small imperfections. If a minor detail doesn’t go as planned, don’t let it derail your entire day. Focus on what’s going well and enjoy the celebration.

6. Practice Self-Care Leading Up to the Big Day
In the weeks leading up to your wedding, make sure you take care of yourself. Exercise, eat well, and get plenty of rest. Taking time for self-care will help you manage stress and feel your best on your wedding day. Treat yourself to a spa day, a massage, or simply a relaxing evening to recharge. The better you feel physically and emotionally, the more you’ll be able to handle the stress.

7. Have a Backup Plan
Sometimes things don’t go as expected—weather can change, vendors can be late, or equipment can malfunction. Having a backup plan for major elements like an indoor ceremony option or additional transportation will give you peace of mind. Knowing you have a plan in place will reduce anxiety and make you feel more confident.

Your wedding day is a once-in-a-lifetime experience, and managing stress is key to making the most of it. With a little preparation, delegation, and self-care, you’ll be able to stay calm and fully enjoy the day. Keep in mind that, at the end of it all, the celebration is about love, not perfection.
"""),
        
        ArticlesModel(title: "The Do's and Don'ts of Wedding Etiquette", information: """
Weddings are full of tradition, but the etiquette around them can sometimes be confusing, especially if you’re unfamiliar with what is expected of guests and the couple. To help you navigate the dos and don'ts of wedding etiquette, here are some essential tips.

Do: RSVP on Time
When you receive your wedding invitation, make sure to respond as soon as possible. Wedding planners and couples rely on your response to finalize numbers for catering, seating arrangements, and other important details. If you can’t attend, make sure to let them know, and if you’re bringing a plus one, be sure to include that information as well.

Don’t: Ask for Plus Ones Unless Invited
It’s common etiquette to only bring a guest if the invitation specifically mentions a plus one. Even if you’re close friends with the couple, don’t assume you can bring someone unless it's indicated. Weddings are often intimate, and uninvited guests can create logistical problems.

Do: Respect the Dress Code
If the couple specifies a dress code (e.g., formal, black tie, or casual), make sure to follow it. Choosing the right outfit shows respect for their wishes and contributes to the overall aesthetic of the event. If you’re unsure, don’t hesitate to ask the couple or the wedding planner for clarification.

Don’t: Wear White
The bride is the center of attention on her wedding day, and wearing white or anything close to it can take away from her special moment. Avoid wearing white, ivory, or any light colors that might resemble the bride’s gown. If you're unsure, opt for another color like pastel, jewel tones, or anything that fits with the wedding's theme.

Do: Be Mindful of Your Phone Use
While it’s tempting to snap photos or take videos during the ceremony, many couples prefer to hire a professional photographer for these moments. Respect the couple’s wishes if they ask for an “unplugged” ceremony, meaning no phones or cameras. If the couple does allow photos, make sure you’re not blocking the photographer’s view or distracting from the moment.

Don’t: Bring Unsolicited Gifts to the Wedding
Gifts are typically reserved for the bridal shower or the couple's registry. Bringing gifts to the wedding can overwhelm the couple and add unnecessary stress. If you want to give something, make sure it’s on the registry or wait until after the wedding to send it.

Do: Offer Your Help
If you’re a close friend or family member, offering to help with wedding-related tasks can be greatly appreciated. Whether it’s helping with decor setup, coordinating with vendors, or assisting guests, your support can make a huge difference in reducing the couple’s stress. However, avoid taking over or pushing your own ideas; the couple likely has a vision for their day.

Don’t: Get Too Drunk or Disruptive
While weddings are celebrations, it’s important to maintain decorum throughout the event. Getting overly intoxicated or causing a scene can make everyone uncomfortable and distract from the joyful occasion. Be mindful of your alcohol consumption and keep the focus on the couple’s special day.

Do: Show Appreciation to the Couple
Take the time to congratulate the couple and express your happiness for them. A sincere message or toast goes a long way in making the couple feel loved and appreciated. Be sure to share your best wishes for their future together.

Weddings are about celebrating love, and understanding the etiquette will help ensure the day is enjoyable for everyone involved. By following these dos and don’ts, you’ll contribute to creating a beautiful, respectful, and memorable experience for the happy couple.
"""),
     
    ]
}
