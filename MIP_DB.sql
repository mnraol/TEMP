/****** Script for SelectTopNRows command from SSMS  ******/
SELECT Top 20 *
FROM [MIPdb].[cMDMIN].Batch
where (Batch_Id > 2000 And  [Batch_Type] in ('API','Bulk API'))  Order By Batch_Id Desc

SELECT Top 20 *
FROM [MIPdb].[cMDMIN].STD_Org_Status
where Batch_Id > 2000 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type in ('Bulk API'))  Order By Batch_Id Desc

SELECT Top 50 *
FROM [MIPdb].[cMDMIN].STD_Organization
where Batch_Id > 2020 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type in ('API','Bulk API') and Status = 'Success')  Order By Batch_Id Desc

SELECT * FROM [MIPdb].[cMDMIN].STD_Organization where Batch_Id =  2241

SELECT Top 20 *
FROM [MIPdb].[cMDMIN].STD_Org_Identifier
where Batch_Id > 2000 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type in ('API','Bulk API'))  Order By Batch_Id Desc

SELECT Top 20 *
FROM [MIPdb].[cMDMIN].STD_Org_Phone
where Batch_Id > 2000 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type in ('API','Bulk API'))  Order By Batch_Id Desc
  
SELECT Top 20 *
FROM [MIPdb].[cMDMPREP].[v_M2API]
where Batch_Id > 2000 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type in ('API','Bulk API'))  Order By Batch_Id Desc

SELECT Top 50 *
FROM [MIPdb].[cMDMPREP].[v_M2Batch]
where Batch_Id > 2000 And Batch_Id in (Select Batch_Id FROM [MIPdb].[cMDMIN].Batch
where Batch_Type ='Bulk API')  Order By Batch_Id Desc
