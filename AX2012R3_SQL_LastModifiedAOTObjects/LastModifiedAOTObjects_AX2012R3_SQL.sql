
select top 100 me.Name, mt.name as TypeName, mt.TREENODENAME as TypeTreeNode, mtparent.TREENODENAME as ParentTypeTreenode, AxId, ParentId, LayerId, CREATEDBY, CREATEDDATETIME, MODIFIEDBY, MODIFIEDDATETIME from ModelElement me
	inner join ModelElementData med on me.ElementHandle = med.ElementHandle
	inner join SYSMODELELEMENTTYPE mt on mt.recid = me.ElementType
	left outer join SYSMODELELEMENTTYPE mtparent on mt.PARENTTYPE = mtparent.RECID
		order by med.MODIFIEDDATETIME desc 