@isTest private class AnimalLocatorTest {
  
    @isTest static void AnimalLocatorMock1(){
        
        Test.setMock(HttpCallOutMock.class, new AnimalLocatorMock());
         String res = AnimalLocator.getAnimalNameById(3);
         String expres = 'chicken';
         System.assertEquals(res, expres);

    }
}