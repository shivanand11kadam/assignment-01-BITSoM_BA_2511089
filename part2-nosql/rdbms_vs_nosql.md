## Database Recommendation

For a healthcare startup building a patient management system, I would prefer using MySQL as the main database. Healthcare data is very sensitive, so it is important that the system always stores and updates data correctly without any inconsistency. MySQL follows ACID properties, which means transactions are reliable and data remains accurate even if something goes wrong during processing.

In a hospital system, even a small delay or mismatch in data can be risky. For example, if a patient’s allergy information is updated, that change should be immediately available everywhere in the system. MySQL ensures this level of consistency, which makes it more suitable for storing patient records, prescriptions, and billing data.

However, if the system also includes a fraud detection module, then the approach can be different. Fraud detection usually involves handling large amounts of data like login activity, transaction logs, and user behavior. This kind of data is often semi-structured and needs fast processing. MongoDB is better suited here because it is flexible and can handle large volumes of data efficiently.

So overall, MySQL should be used for the core healthcare system to maintain accuracy and reliability, while MongoDB can be used alongside it for fraud detection or analytics. This combination helps balance both data safety and performance.