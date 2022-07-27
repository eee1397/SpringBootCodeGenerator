<#if isAutoImport?exists && isAutoImport==true>
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
public interface ${classInfo.className}Service {

    /**
    * 新增
    */
    public int insert(${classInfo.className}PO ${classInfo.className?uncap_first});

    /**
    * 删除
    */
    public int delete(Long id);

    /**
    * 更新
    */
    public int update(${classInfo.className}PO ${classInfo.className?uncap_first});

    /**
    * 根据主键 id 查询
    */
    public ${classInfo.className}PO load(Long id);

    /**
    * 分页查询
    */
    public Page<${classInfo.className}PO> pageList(${classInfo.className}Req req);

}
