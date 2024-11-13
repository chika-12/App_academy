import { expect } from "chai";
import User from "../class/user.js";

describe("User class", function(){
    it ("it should create successfully", function(){
        let user = new User();
        
        expect(user).to.exist
    });
    it("it should create username", function(){
        let user = new User("Chika")
        expect(user.username).to.equal("Chika")
    })
});
