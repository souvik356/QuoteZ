//
//  DataManager.swift
//  QuoteZ
//
//  Created by M sai deepthi on 27/07/24.
//

import Foundation

class DataManager{
    static func getData() -> [Speaker]{
        let speaker1 = Speaker(id: 0,
                               speakerName: "Warren Buffer",
                               speakerImage: "warren",
                               quotes: ["The most important investment you can make is in yourself.","Read 500 pages like this every day. ...","I insist on a lot of time being spent, almost every day, to just sit and think. "])
        let speaker2 = Speaker(id: 1,
                               speakerName: "Swami Vivekananda",
                               speakerImage: "vivekananda",
                               quotes: ["Take up one idea. Make that one idea your life;","dream of it; think of it; live on that idea","Arise, awake, and stop not until the goal is achieved."])
        let speaker3 = Speaker(id: 2,
                               speakerName: "Subash Chandra Bose",
                               speakerImage: "subash",
                               quotes: ["Give me blood, and I shall give you freedom.","Freedom is not given, it is taken","One individual may die for an idea, but that idea will, after his death, incarnate itself in a thousand lives","It is our duty to pay for our liberty with our own blood"])
        let speaker4 = Speaker(id: 3,
                               speakerName: "Ratan Tata",
                               speakerImage: "tata",
                               quotes: ["The greatest failure is not to try.","I don't believe in leaving things to luck.","Never forget your roots, and always be proud of where you come from."])
        let speaker5 = Speaker(id: 4,
                               speakerName: "Albert Einstein",
                               speakerImage: "eienstein",
                               quotes: ["Life is like riding a bicycle. To keep your balance, you must keep moving.", "Imagination is more important than knowledge.", "Anyone who has never made a mistake has never tried anything new."])

        let speaker6 = Speaker(id: 5,
                               speakerName: "Nelson Mandela",
                               speakerImage: "mandela",
                               quotes: ["The greatest glory in living lies not in never falling, but in rising every time we fall.", "It always seems impossible until it's done.", "Education is the most powerful weapon which you can use to change the world."])

        let speaker7 = Speaker(id: 6,
                               speakerName: "Mahatma Gandhi",
                               speakerImage: "gandhi",
                               quotes: ["Be the change that you wish to see in the world.", "The best way to find yourself is to lose yourself in the service of others.", "Live as if you were to die tomorrow. Learn as if you were to live forever."])

        let speaker8 = Speaker(id: 7,
                               speakerName: "Steve Jobs",
                               speakerImage: "jobs",
                               quotes: ["Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work.", "Innovation distinguishes between a leader and a follower.", "Stay hungry, stay foolish."])

        let speaker9 = Speaker(id: 8,
                               speakerName: "Martin Luther King Jr.",
                               speakerImage: "king",
                               quotes: ["I have a dream that one day this nation will rise up and live out the true meaning of its creed.", "The time is always right to do what is right.", "Injustice anywhere is a threat to justice everywhere."])

        let speaker10 = Speaker(id: 9,
                                speakerName: "Mother Teresa",
                                speakerImage: "teresa",
                                quotes: ["Spread love everywhere you go. Let no one ever come to you without leaving happier.", "If you can't feed a hundred people, then feed just one.", "Peace begins with a smile."])

        let speaker11 = Speaker(id: 10,
                                speakerName: "Dalai Lama",
                                speakerImage: "dalai",
                                quotes: ["Happiness is not something ready-made. It comes from your own actions.", "Love and compassion are necessities, not luxuries. Without them, humanity cannot survive.", "Be kind whenever possible. It is always possible."])

        let speaker12 = Speaker(id: 11,
                                speakerName: "Abraham Lincoln",
                                speakerImage: "lincoln",
                                quotes: ["In the end, it's not the years in your life that count. It's the life in your years.", "Whatever you are, be a good one.", "Do I not destroy my enemies when I make them my friends?"])

        let speaker13 = Speaker(id: 12,
                                speakerName: "Benjamin Franklin",
                                speakerImage: "franklin",
                                quotes: ["Tell me and I forget. Teach me and I remember. Involve me and I learn.", "An investment in knowledge pays the best interest.", "Well done is better than well said."])

        let speaker14 = Speaker(id: 13,
                                speakerName: "Elon Musk",
                                speakerImage: "musk",
                                quotes: ["When something is important enough, you do it even if the odds are not in your favor.", "I think it is possible for ordinary people to choose to be extraordinary.", "The first step is to establish that something is possible; then probability will occur."])

        let speaker15 = Speaker(id: 14,
                                speakerName: "J.K. Rowling",
                                speakerImage: "rowling",
                                quotes: ["It is our choices, Harry, that show what we truly are, far more than our abilities.", "It does not do to dwell on dreams and forget to live.", "We do not need magic to transform our world. We carry all the power we need inside ourselves already."])
        return [speaker1, speaker2, speaker3, speaker4, speaker5, speaker6, speaker7, speaker8, speaker9, speaker10, speaker11, speaker12, speaker13, speaker14, speaker15]
    }
    
}
