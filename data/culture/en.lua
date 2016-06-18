-- Copyright © 2008-2022 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- Source: From pioneer music contributor franzopow[m] on IRC.

local CultureName = require './common'


local male = {
	"Aaron",
	"Abdul",
	"Adam",
	"Adrian",
	"Alan",
	"Albert",
	"Albie",
	"Alec",
	"Alex",
	"Alexander",
	"Alfie",
	"Alfred",
	"Allan",
	"Andrew",
	"Anthony",
	"Antony",
	"Archibald",
	"Arlo",
	"Arnold",
	"Arthur",
	"Ashley",
	"Barrie",
	"Barry",
	"Basil",
	"Ben",
	"Benjamin",
	"Bernard",
	"Bertie",
	"Bertram",
	"Billy",
	"Blake",
	"Bradley",
	"Brandon",
	"Brett",
	"Brian",
	"Bruce",
	"Bryan",
	"Callum",
	"Cameron",
	"Carl",
	"Carter",
	"Cecil",
	"Charles",
	"Charlie",
	"Chester",
	"Christian",
	"Christopher",
	"Clarence",
	"Claude",
	"Clifford",
	"Clive",
	"Colin",
	"Connor",
	"Conor",
	"Craig",
	"Cyril",
	"Dale",
	"Damian",
	"Damien",
	"Daniel",
	"Danny",
	"Darren",
	"David",
	"Dean",
	"Declan",
	"Denis",
	"Dennis",
	"Derek",
	"Derrick",
	"Desmond",
	"Dominic",
	"Donald",
	"Douglas",
	"Duncan",
	"Dylan",
	"Edgar",
	"Edmund",
	"Edward",
	"Edwin",
	"Elijah",
	"Elliot",
	"Elliott",
	"Ellis",
	"Eric",
	"Ernest",
	"Ethan",
	"Evan",
	"Felix",
	"Finley",
	"Finn",
	"Francis",
	"Frank",
	"Fred",
	"Freddie",
	"Frederick",
	"Gabriel",
	"Gareth",
	"Garry",
	"Gary",
	"Gavin",
	"Geoffrey",
	"George",
	"Gerald",
	"Gerard",
	"Gilbert",
	"Glen",
	"Glenn",
	"Gordon",
	"Graeme",
	"Graham",
	"Gregory",
	"Guy",
	"Harley",
	"Harold",
	"Harrison",
	"Harry",
	"Harvey",
	"Hector",
	"Henry",
	"Herbert",
	"Horace",
	"Howard",
	"Hubert",
	"Hudson",
	"Hugh",
	"Hugo",
	"Hunter",
	"Iain",
	"Ian",
	"Ivan",
	"Ivor",
	"Jack",
	"Jackson",
	"Jacob",
	"Jake",
	"James",
	"Jamie",
	"Jason",
	"Jasper",
	"Jaxon",
	"Jay",
	"Jeffrey",
	"Jenson",
	"Jeremy",
	"Jesse",
	"Joe",
	"Joel",
	"John",
	"Jonathan",
	"Jordan",
	"Joseph",
	"Josh",
	"Joshua",
	"Jude",
	"Julian",
	"Justin",
	"Karl",
	"Keith",
	"Kenneth",
	"Kevin",
	"Kieran",
	"Kyle",
	"Laurence",
	"Lawrence",
	"Lee",
	"Leigh",
	"Leo",
	"Leon",
	"Leonard",
	"Leslie",
	"Lewis",
	"Liam",
	"Lionel",
	"Logan",
	"Louie",
	"Louis",
	"Luca",
	"Lucas",
	"Luke",
	"Malcolm",
	"Marc",
	"Marcus",
	"Mark",
	"Martin",
	"Martyn",
	"Mason",
	"Mathew",
	"Matthew",
	"Maurice",
	"Max",
	"Melvyn",
	"Michael",
	"Mitchell",
	"Morris",
	"Nathan",
	"Neil",
	"Neville",
	"Nicholas",
	"Nigel",
	"Noah",
	"Noel",
	"Norman",
	"Oakley",
	"Oliver",
	"Ollie",
	"Oscar",
	"Owen",
	"Patrick",
	"Paul",
	"Percival",
	"Percy",
	"Peter",
	"Philip",
	"Phillip",
	"Ralph",
	"Raymond",
	"Reece",
	"Reggie",
	"Reginald",
	"Reuben",
	"Rhys",
	"Richard",
	"Ricky",
	"Riley",
	"Robert",
	"Robin",
	"Rodney",
	"Roger",
	"Roland",
	"Roman",
	"Ronald",
	"Ronnie",
	"Rory",
	"Ross",
	"Rowan",
	"Roy",
	"Royston",
	"Russell",
	"Ryan",
	"Sam",
	"Samuel",
	"Scott",
	"Sean",
	"Sebastian",
	"Shane",
	"Shaun",
	"Sidney",
	"Simon",
	"Stanley",
	"Stephen",
	"Steven",
	"Stewart",
	"Stuart",
	"Sydney",
	"Teddy",
	"Terence",
	"Terry",
	"Theo",
	"Theodore",
	"Thomas",
	"Timothy",
	"Toby",
	"Tom",
	"Tommy",
	"Tony",
	"Trevor",
	"Victor",
	"Vincent",
	"Walter",
	"Wayne",
	"Wilfred",
	"William",
	"Zachary",
}

local female =  {
	"Abbie",
	"Abigail",
	"Ada",
	"Agnes",
	"Aimee",
	"Alexandra",
	"Alice",
	"Alison",
	"Alma",
	"Amanda",
	"Amber",
	"Amelia",
	"Amelie",
	"Amy",
	"Andrea",
	"Angela",
	"Anita",
	"Ann",
	"Anna",
	"Annabelle",
	"Anne",
	"Annette",
	"Annie",
	"Arabella",
	"Aria",
	"Ashleigh",
	"Audrey",
	"Ava",
	"Barbara",
	"Beatrice",
	"Bella",
	"Bertha",
	"Beryl",
	"Bessie",
	"Beth",
	"Bethan",
	"Bethany",
	"Betty",
	"Beverley",
	"Blanche",
	"Bonnie",
	"Brenda",
	"Bridget",
	"Caitlin",
	"Carla",
	"Carly",
	"Carol",
	"Carole",
	"Caroline",
	"Carolyn",
	"Catherine",
	"Chantelle",
	"Charlene",
	"Charlotte",
	"Chelsea",
	"Cheryl",
	"Chloe",
	"Christina",
	"Christine",
	"Clair",
	"Claire",
	"Clara",
	"Clare",
	"Constance",
	"Courtney",
	"Cynthia",
	"Daisy",
	"Danielle",
	"Daphne",
	"Darcie",
	"Dawn",
	"Debbie",
	"Deborah",
	"Debra",
	"Delilah",
	"Demi",
	"Denise",
	"Diana",
	"Diane",
	"Donna",
	"Dora",
	"Doreen",
	"Doris",
	"Dorothy",
	"Edith",
	"Edna",
	"Eileen",
	"Elaine",
	"Eleanor",
	"Eliza",
	"Elizabeth",
	"Ella",
	"Ellen",
	"Ellie",
	"Elsie",
	"Emilia",
	"Emily",
	"Emma",
	"Enid",
	"Erin",
	"Esther",
	"Ethel",
	"Eva",
	"Evelyn",
	"Evie",
	"Fanny",
	"Felicity",
	"Fiona",
	"Florence",
	"Frances",
	"Francesca",
	"Freda",
	"Freya",
	"Gabrielle",
	"Gail",
	"Gemma",
	"Georgia",
	"Georgina",
	"Geraldine",
	"Gertrude",
	"Gillian",
	"Gladys",
	"Glenys",
	"Gloria",
	"Glynis",
	"Grace",
	"Gracie",
	"Gwendoline",
	"Hallie",
	"Hannah",
	"Harper",
	"Harriet",
	"Hayley",
	"Hazel",
	"Heather",
	"Heidi",
	"Helen",
	"Hilary",
	"Hilda",
	"Hollie",
	"Holly",
	"Ida",
	"Imogen",
	"Irene",
	"Iris",
	"Isabella",
	"Isabelle",
	"Isla",
	"Ivy",
	"Jacqueline",
	"Jade",
	"Jane",
	"Janet",
	"Janice",
	"Jasmine",
	"Jayne",
	"Jean",
	"Jeanette",
	"Jemma",
	"Jenna",
	"Jennifer",
	"Jenny",
	"Jessica",
	"Jessie",
	"Jill",
	"Joan",
	"Joanna",
	"Joanne",
	"Jodie",
	"Jordan",
	"Josephine",
	"Joy",
	"Joyce",
	"Judith",
	"Julia",
	"Julie",
	"June",
	"Karen",
	"Kate",
	"Katherine",
	"Kathleen",
	"Kathryn",
	"Katie",
	"Katy",
	"Kay",
	"Kayleigh",
	"Kelly",
	"Kerry",
	"Kim",
	"Kimberley",
	"Kirsty",
	"Lara",
	"Laura",
	"Lauren",
	"Layla",
	"Leah",
	"Leanne",
	"Lesley",
	"Lilian",
	"Lillian",
	"Lilly",
	"Lily",
	"Linda",
	"Lindsay",
	"Lindsey",
	"Lisa",
	"Lola",
	"Lorraine",
	"Louisa",
	"Louise",
	"Lucy",
	"Luna",
	"Lydia",
	"Lyla",
	"Lynda",
	"Lyndsey",
	"Lynn",
	"Lynne",
	"Lynsey",
	"Mabel",
	"Maisie",
	"Mandy",
	"Margaret",
	"Margery",
	"Margot",
	"Maria",
	"Marian",
	"Marie",
	"Marilyn",
	"Marina",
	"Marion",
	"Marjorie",
	"Marlene",
	"Martha",
	"Mary",
	"Maryam",
	"Matilda",
	"Maud",
	"Maureen",
	"Mavis",
	"Maxine",
	"May",
	"Maya",
	"Megan",
	"Melanie",
	"Melissa",
	"Mia",
	"Michele",
	"Michelle",
	"Mildred",
	"Millicent",
	"Millie",
	"Minnie",
	"Miriam",
	"Molly",
	"Monica",
	"Muriel",
	"Nancy",
	"Naomi",
	"Natalie",
	"Natasha",
	"Nellie",
	"Nichola",
	"Nicola",
	"Nicole",
	"Nora",
	"Norah",
	"Norma",
	"Olive",
	"Olivia",
	"Paige",
	"Pamela",
	"Patricia",
	"Paula",
	"Pauline",
	"Peggy",
	"Penelope",
	"Phoebe",
	"Phyllis",
	"Rachael",
	"Rachel",
	"Rebecca",
	"Rebekah",
	"Rhiannon",
	"Rita",
	"Robyn",
	"Rose",
	"Rosemary",
	"Rosie",
	"Rosina",
	"Ruby",
	"Ruth",
	"Sally",
	"Samantha",
	"Sandra",
	"Sara",
	"Sarah",
	"Scarlett",
	"Shannon",
	"Sharon",
	"Sheila",
	"Shirley",
	"Sian",
	"Sienna",
	"Sofia",
	"Sonia",
	"Sophia",
	"Sophie",
	"Stacey",
	"Stella",
	"Stephanie",
	"Summer",
	"Susan",
	"Suzanne",
	"Sybil",
	"Sylvia",
	"Tanya",
	"Tara",
	"Teresa",
	"Thea",
	"Thelma",
	"Theresa",
	"Tina",
	"Toni",
	"Tracey",
	"Tracy",
	"Valerie",
	"Vanessa",
	"Vera",
	"Veronica",
	"Victoria",
	"Violet",
	"Vivienne",
	"Wendy",
	"Willow",
	"Winifred",
	"Yasmin",
	"Yvonne",
	"Zoe",
}

local surname =  {
	"Adams",
	"Allen",
	"Anderson",
	"Armstrong",
	"Atkinson",
	"Bailey",
	"Baker",
	"Ball",
	"Barker",
	"Barnes",
	"Bell",
	"Bennett",
	"Booth",
	"Bradley",
	"Brooks",
	"Brown",
	"Burton",
	"Butler",
	"Campbell",
	"Carter",
	"Chapman",
	"Clarke",
	"Cole",
	"Collins",
	"Cook",
	"Cooper",
	"Corbyn",
	"Cox",
	"Davidson",
	"Davies",
	"Dawson",
	"Dixon",
	"Edwards",
	"Elliott",
	"Evans",
	"Fisher",
	"Fletcher",
	"Ford",
	"Foster",
	"Fox",
	"Gibson",
	"Graham",
	"Grant",
	"Gray",
	"Green",
	"Griffiths",
	"Hall",
	"Hamilton",
	"Harris",
	"Harrison",
	"Harvey",
	"Henderson",
	"Hill",
	"Holmes",
	"Howard",
	"Hughes",
	"Hunt",
	"Hunter",
	"Jackson",
	"James",
	"Jenkins",
	"Johnson",
	"Johnston",
	"Jones",
	"Kelly",
	"Kennedy",
	"King",
	"Knight",
	"Lawrence",
	"Lee",
	"Lewis",
	"Lloyd",
	"Marshall",
	"Martin",
	"Mason",
	"Matthews",
	"McDonald",
	"Miller",
	"Mitchell",
	"Moore",
	"Morgan",
	"Morris",
	"Morrison",
	"Murphy",
	"Murray",
	"Owen",
	"Palmer",
	"Parker",
	"Payne",
	"Pearce",
	"Pearson",
	"Perry",
	"Phillips",
	"Powell",
	"Price",
	"Reid",
	"Reynolds",
	"Richards",
	"Richardson",
	"Roberts",
	"Robertson",
	"Robinson",
	"Rogers",
	"Rose",
	"Ross",
	"Russell",
	"Saunders",
	"Scott",
	"Shaw",
	"Simpson",
	"Smith",
	"Spencer",
	"Stevens",
	"Stewart",
	"Taylor",
	"Thomas",
	"Thompson",
	"Thomson",
	"Turner",
	"Walker",
	"Walsh",
	"Ward",
	"Watson",
	"Watts",
	"Webb",
	"Webster",
	"West",
	"White",
	"Wilkinson",
	"Williams",
	"Williamson",
	"Wilson",
	"Wood",
	"Wright",
	"Young",
}

local English = CultureName.New({
	male = male,
	female = female,
	surname = surname,
	name = "English",
	code = "en",
})

return English
