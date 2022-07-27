<#if isAutoImport?exists && isAutoImport==true>
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
</#if>
/**
 * @description ${classInfo.classComment}
 * @author ${authorName}
 * @date ${.now?string('yyyy-MM-dd')}
 */
@Service
public class ${classInfo.className}ServiceImpl implements ${classInfo.className}Service {

	@Resource
	private ${classInfo.className}Mapper ${classInfo.className?uncap_first}Mapper;


	@Override
	public int insert(${classInfo.className}PO ${classInfo.className?uncap_first}) {

		// valid
		if (${classInfo.className?uncap_first} == null) {
			return ${returnUtilFailure}("必要参数缺失");
        }

		int ret = ${classInfo.className?uncap_first}Mapper.insert(${classInfo.className?uncap_first});
        return row;
	}


	@Override
	public int delete(Long id) {
		int ret = ${classInfo.className?uncap_first}Mapper.delete(id);
		return ret;
	}


	@Override
	public int update(${classInfo.className}PO ${classInfo.className?uncap_first}) {
		int ret = ${classInfo.className?uncap_first}Mapper.update(${classInfo.className?uncap_first});
		return ret;
	}


	@Override
	public ${classInfo.className}PO load(Long id) {
		return ${classInfo.className?uncap_first}Mapper.load(id);
	}


	@Override
	public Page<${classInfo.className}PO> pageList(${classInfo.className}Req req) {

		List<${classInfo.className}PO> pageList = ${classInfo.className?uncap_first}Mapper.pageList(req);
		int totalCount = ${classInfo.className?uncap_first}Mapper.pageListCount(req);

		return new Page<${classInfo.className}PO>(Long.valueOf(totalCount), pageList);
	}

}
