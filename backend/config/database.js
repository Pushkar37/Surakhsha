const admin = require('firebase-admin');
const serviceAccount = require('./firebaseServiceAccount.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount)
})
const db=admin.firestore();

async function addData(collection,data,id) {
    try {
      const docRef = db.collection(collection).doc(id);
      await docRef.set(data);
      console.log("data is added" + data)
    } catch (error) {
      console.log(error);
      console.log("error adding data");
    }
}
async function getData(collection) {
  try {
    const docRef= await db.collection(collection).get()
    const data=docRef.docs.map((doc)=>doc.data())
    return data;
  } catch (error) {
    console.log(error)
  }
}
async function updateData(collection, id, updates) {
  try {
    const docRef = db.collection(collection).doc(id);
    await docRef.update(updates);
    console.log("Data updated for ID:", id);
  } catch (error) {
    console.error("Error updating data:", error);
  }
}
async function deleteData(collection, id) {
  try {
    const docRef = db.collection(collection).doc(id);
    await docRef.delete();
    console.log("Data deleted for ID:", id);
  } catch (error) {
    console.error("Error deleting data:", error);
  }
}
module.exports={addData,getData,updateData,deleteData};
