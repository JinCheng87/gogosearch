
Tag.create(name:"github")



Url.create(title:"google",address:"www.google.com").tags.push(Tag.create(name:"google"))
Url.create(title:"apple",address:"www.apple.com").tags.push(Tag.create(name:"mac"))
Url.last.tags.push(Tag.create(name:"iphone"))
Url.last.tags.push(Tag.create(name:"apple"))
Url.create(title:"youtube",address:"www.youtube.com").tags.push(Tag.create(name:"movie"))
Url.last.tags.push(Tag.create(name:"tv"))
