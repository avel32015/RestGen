<?xml version="1.0"?>
<xsl:stylesheet version="1.0"   
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xalan="http://xml.apache.org/xalan"
    xmlns:redirect="http://xml.apache.org/xalan/redirect"
    xmlns:func="http://exslt.org/functions"
    xmlns:common="http://exslt.org/common"
    xmlns:istoe="http://istoe.org/istoe"
    xmlns:jname="http://istoe.org/jname"
    xmlns:java="http://xml.apache.org/xalan/java"
    extension-element-prefixes="xalan redirect func common istoe jname java">

<xsl:output method="text" version="1.0" encoding="utf-8" indent="yes"/>

<!-- DEFAULT IMPORTS -->
<xsl:variable name="defaults">
<default>
	<import>
		<item type="appClass">import org.springframework.boot.SpringApplication;&#10;</item>
		<item type="appClass">import org.springframework.boot.actuate.autoconfigure.MetricsDropwizardAutoConfiguration;&#10;</item>
		<item type="appClass">import org.springframework.boot.autoconfigure.SpringBootApplication;&#10;</item>
		<item type="serviceClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="serviceImplClass">import lombok.extern.slf4j.Slf4j;&#10;</item>
		<item type="serviceImplClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="serviceImplClass">import org.springframework.beans.factory.annotation.Autowired;&#10;</item>
		<item type="serviceImplClass">import org.springframework.stereotype.Service;&#10;</item>
		<item type="controllerClass">import com.codahale.metrics.annotation.Timed;&#10;</item>
		<item type="controllerClass">import org.springframework.beans.factory.annotation.Autowired;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.PostMapping;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RequestBody;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RequestMapping;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RestController;&#10;</item>
		<item type="controllerClass">import javax.validation.Valid;&#10;</item>
		<item type="repositoryClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="repositoryClass">import org.jetbrains.annotations.Nullable;&#10;</item>
		<item type="repositoryImplClass">import lombok.extern.slf4j.Slf4j;&#10;</item>
		<item type="repositoryImplClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="repositoryImplClass">import org.jetbrains.annotations.Nullable;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.beans.factory.annotation.Autowired;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.JdbcTemplate;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.RowMapper;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.RowMapperResultSetExtractor;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.SqlOutParameter;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.SqlParameter;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.simple.SimpleJdbcCall;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.stereotype.Repository;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.transaction.annotation.Transactional;&#10;</item>
		<item type="repositoryImplClass">import java.sql.ResultSet;&#10;</item>
		<item type="repositoryImplClass">import java.sql.SQLException;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Types;&#10;</item>
		<item type="repositoryImplClass">import java.util.Map;&#10;</item>
		<item type="repositoryImplClass">import java.util.List;&#10;</item>
		
		<item type="entityRequestClass">import com.fasterxml.jackson.annotation.JsonFormat;&#10;</item>
		<item type="entityRequestClass">import com.fasterxml.jackson.annotation.JsonProperty;&#10;</item>
		<item type="entityRequestClass">import io.swagger.annotations.ApiModelProperty;&#10;</item>
		<item type="entityRequestClass">import lombok.Data;&#10;</item>
		<item type="entityRequestClass">import lombok.NoArgsConstructor;&#10;</item>
		<item type="entityRequestClass">import lombok.experimental.Accessors;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.NotNull;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.Pattern;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.constraints.Length;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.constraints.ScriptAssert;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.valuehandling.UnwrapValidatedValue;&#10;</item>
		<item type="entityRequestClass">import ru.tinkoff.tpmi.validation.ValidNumbers;&#10;</item>

		<item type="entityRequestClass">import java.math.BigDecimal;&#10;</item>
		<item type="entityRequestClass">import java.util.Date;&#10;</item>
		
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonInclude;&#10;</item>
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonFormat;&#10;</item>
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonProperty;&#10;</item>
		<item type="entityResponseClass">import io.swagger.annotations.ApiModelProperty;&#10;</item>
		<item type="entityResponseClass">import lombok.Data;&#10;</item>
		<item type="entityResponseClass">import lombok.NoArgsConstructor;&#10;</item>
		<item type="entityResponseClass">import lombok.experimental.Accessors;&#10;</item>
		<item type="entityResponseClass">import org.hibernate.validator.constraints.Length;&#10;</item>
		<item type="entityResponseClass">import ru.tinkoff.tpmi.validation.ValidNumbers;&#10;</item>
		<item type="entityResponseClass">import static com.fasterxml.jackson.annotation.JsonInclude.Include;&#10;</item>
		<item type="entityResponseClass">import javax.validation.constraints.NotNull;&#10;</item>
		<item type="entityResponseClass">import java.math.BigDecimal;&#10;</item>
		<item type="entityResponseClass">import java.util.Date;&#10;</item>
		
	</import>
	<annatation>
		<item type="appClass">@SpringBootApplication(exclude = MetricsDropwizardAutoConfiguration.class)&#10;</item>
		<item type="serviceImplClass">@Service&#10;</item>
		<item type="serviceImplClass">@Slf4j&#10;</item>
		<item type="controllerClass">@RestController&#10;</item>
		<item type="repositoryImplClass">@Repository&#10;</item>
		<item type="repositoryImplClass">@Slf4j</item>
		
		<item type="entityRequestClass">@Accessors(chain = true)&#10;</item>
		<item type="entityRequestClass">@Data&#10;</item>
		<item type="entityRequestClass">@NoArgsConstructor&#10;</item>
		
		<item type="entityResponseClass">@Accessors(chain = true)&#10;</item>
		<item type="entityResponseClass">@Data&#10;</item>
		<item type="entityResponseClass">@NoArgsConstructor&#10;</item>
		
	</annatation>
</default>	
</xsl:variable>

<!-- JNAME EXTENSION-->
<func:function name="jname:oracleToJavaType">
	<xsl:param name="oracleType"/>
	<xsl:param name="subtype"/>
	<xsl:variable name="class" select="jname:JavaClassName($subtype)"/>
	<func:result>
        <xsl:choose>
            <xsl:when test="$oracleType='number'">
                <xsl:choose>
                    <xsl:when test="$subtype &lt; 10"><xsl:text>Integer</xsl:text></xsl:when>
                    <xsl:when test="$subtype &gt;= 10"><xsl:text>Long</xsl:text></xsl:when>
                    <xsl:otherwise><xsl:text>BigDecimal</xsl:text></xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$oracleType='integer'"><xsl:text>Integer</xsl:text></xsl:when>
            <xsl:when test="$oracleType='numeric'"><xsl:text>Long</xsl:text></xsl:when>
            <xsl:when test="$oracleType='varchar2'"><xsl:text>String</xsl:text></xsl:when>
            <xsl:when test="$oracleType='string'"><xsl:text>String</xsl:text></xsl:when>
            <xsl:when test="$oracleType='timestamp'"><xsl:text>Date</xsl:text></xsl:when>
            <xsl:when test="$oracleType='date'"><xsl:text>Date</xsl:text></xsl:when>
            <xsl:when test="$oracleType='array'"><xsl:value-of select="concat($class, '[]')"/></xsl:when>
            <xsl:when test="$oracleType='cursor'"><xsl:value-of select="concat($class, '[]')"/></xsl:when>
            <xsl:when test="$oracleType='struct'"><xsl:value-of select="$class"/></xsl:when>
            <xsl:otherwise><xsl:value-of select="$oracleType"/></xsl:otherwise>
		</xsl:choose>
	</func:result>
</func:function>

<func:function name="jname:javaFileName">
	<xsl:param name="path"/>
	<xsl:param name="classPackage"/>
	<xsl:param name="className"/>
	<func:result>
		<xsl:value-of select="$path"/>
		<xsl:text>/java/</xsl:text>
		<xsl:value-of select="translate($classPackage,'.','/')"/>
		<xsl:text>/</xsl:text>
		<xsl:value-of select="$className"></xsl:value-of>
		<xsl:text>.java</xsl:text>
	</func:result>	
</func:function>

<func:function name="jname:packageLine">
	<xsl:param name="base"/>
	<xsl:param name="application"/>
	<xsl:param name="type"/>
	<func:result>
    	<xsl:text>package </xsl:text>
    	<xsl:value-of select="$base"/>
    	<xsl:text>.</xsl:text>
    	<xsl:value-of select="istoe:translate($application,'false')"/>
    	<xsl:if test="string-length($type)&gt;0">
    		<xsl:text>.</xsl:text>
    		<xsl:value-of select="$type"/>
    	</xsl:if>
    	<xsl:text>;&#10;&#10;</xsl:text>
	</func:result>	
</func:function>

<func:function name="jname:defaultImportLines">
	<xsl:param name="type"/>
	<func:result>
	<xsl:for-each select="xalan:nodeset($defaults)/default/import/item[@type=$type]">
        <xsl:value-of select="."/>
      </xsl:for-each>
    </func:result>
</func:function>

<func:function name="jname:defaultAnnatationLines">
	<xsl:param name="type"/>
	<xsl:param name="ident"/>
	<func:result>
	<xsl:for-each select="xalan:nodeset($defaults)/default/annatation/item[@type=$type]">
        <xsl:value-of select="$ident"/>
        <xsl:value-of select="."/>
    </xsl:for-each>
    </func:result>
</func:function>

<func:function name="jname:finalStringOracleParam">
	<xsl:param name="name"/>
	<xsl:param name="source"/>
	<func:result>
		<xsl:text>    private static final String </xsl:text>
		<xsl:value-of select="istoe:translate($name)"/>
		<xsl:text> = "</xsl:text>
		<xsl:value-of select="istoe:ifEmpty($source,$name)"/>
		<xsl:text>";&#10;</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:newSqlParameter">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<xsl:param name="direction"/>
	<xsl:param name="subtype"/>
	<func:result>
		<xsl:if test="$direction='in'"><xsl:text>new SqlParameter(</xsl:text></xsl:if>
		<xsl:if test="$direction='out'"><xsl:text>new SqlOutParameter(</xsl:text></xsl:if>
		<xsl:value-of select="istoe:translate($name)"/>
		<xsl:text>, Types.</xsl:text>
		<xsl:if test="$type='number'"><xsl:text>INTEGER</xsl:text></xsl:if>
		<xsl:if test="$type='integer'"><xsl:text>INTEGER</xsl:text></xsl:if>
		<xsl:if test="$type='numeric'"><xsl:text>NUMERIC</xsl:text></xsl:if>
		<xsl:if test="$type='varchar2'"><xsl:text>VARCHAR</xsl:text></xsl:if>
		<xsl:if test="$type='string'"><xsl:text>VARCHAR</xsl:text></xsl:if>
		<xsl:if test="$type='timestamp'"><xsl:text>TIMESTAMP</xsl:text></xsl:if>
		<xsl:if test="$type='date'"><xsl:text>TIMESTAMP</xsl:text></xsl:if>
        <xsl:if test="$type='array'"><xsl:text>ARRAY, SCHEMA+".</xsl:text><xsl:value-of select="istoe:translate($subtype)"/><xsl:text>"</xsl:text></xsl:if>
        <xsl:if test="$type='cursor'"><xsl:text>REF_CURSOR, this.extractor</xsl:text><xsl:value-of select="jname:JavaClassName($subtype)"/></xsl:if>
        <xsl:if test="$type='struct'"><xsl:text>STRUCT</xsl:text></xsl:if>
        <xsl:if test="$type='blob'"><xsl:text>BLOB</xsl:text></xsl:if>
		<xsl:text>)</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:mapAddValue">
	<xsl:param name="name"/>
	<func:result>
	<xsl:text>.addValue(</xsl:text>
	<xsl:value-of select="istoe:translate($name)"/>
	<xsl:text>, </xsl:text>
	<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($name))"/>
	<xsl:text>)</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:oracleToGetter">
	<xsl:param name="name"/>
	<xsl:param name="oracleType"/>
	<xsl:param name="oracleSize"/>
	<xsl:variable name="type" select="jname:oracleToJavaType($oracleType, $oracleSize)"/>
	<func:result>
        <xsl:text>get</xsl:text>
        <xsl:choose>
            <xsl:when test="$type='Integer'"><xsl:text>Int</xsl:text></xsl:when>
            <xsl:otherwise><xsl:value-of select="$type"/></xsl:otherwise>
        </xsl:choose>
        <xsl:text>( </xsl:text><xsl:value-of select="$name"/><xsl:text> )</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:requestGetParam">
	<xsl:param name="name"/>
	<xsl:param name="oracleType"/>
	<xsl:param name="oracleSize"/>
	<xsl:variable name="type" select="jname:oracleToJavaType($oracleType, $oracleSize)"/>
	<func:result>
		<xsl:value-of select="$type"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($name))"/>	
		<xsl:text> = request.get</xsl:text>
		<xsl:value-of select="jname:oracleToJavaParamName($name)"/>
		<xsl:text>();&#10;</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:mapResultGet">
	<xsl:param name="name"/>
	<xsl:param name="oracleType"/>
	<xsl:param name="subtype"/>
	<xsl:variable name="type" select="jname:oracleToJavaType($oracleType, $subtype)"/>
	<xsl:variable name="class" select="jname:JavaClassName($subtype)"/>
	<func:result>
        <xsl:choose>
            <!-- 
            TrafficData[] trafficData = ((List<?>) result.get(O_TRAFFIC_DATA)).toArray(new TrafficData[0]);
            -->
            <xsl:when test="$oracleType = 'cursor'">
                <xsl:value-of select="$type"/><xsl:text> </xsl:text><xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($name))"/>
                <xsl:text> = ((List&lt;?&gt;) result.get(</xsl:text><xsl:value-of select="istoe:translate($name)"/>
                <xsl:text>)).toArray(new </xsl:text><xsl:value-of select="$class"/><xsl:text>[0]);&#10;</xsl:text>
            </xsl:when>
            
            <!-- 
            ClaimEvent[] events = extractorClaimEvent.extractData( ((Array) result.get( O_MNP_CLAIM_EVENTS_LIST )).getResultSet() ).toArray( new ClaimEvent[0] );
            -->
            <xsl:when test="$oracleType = 'array'">
                <xsl:value-of select="$type"/><xsl:text> </xsl:text><xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($name))"/>
                <xsl:text> = extractor</xsl:text><xsl:value-of select="$class"/>
                <xsl:text>.extractData( ((Array) result.get(</xsl:text><xsl:value-of select="istoe:translate($name)"/>
                <xsl:text> )).getResultSet() ).toArray(new </xsl:text><xsl:value-of select="$class"/><xsl:text>[0]);&#10;</xsl:text>
            </xsl:when>
            
            <!-- 
            ClaimEvent event = (Struct) result.get();
            -->
            <xsl:when test="$oracleType = 'struct'">
                <xsl:text>//TODO Result for structure &#10;</xsl:text>
            </xsl:when>
            
            <!-- 
            String message = (String) result.get(O_MESSAGE);
            -->
            <xsl:otherwise>
                <xsl:value-of select="$type"/><xsl:text> </xsl:text><xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($name))"/>
                <xsl:text> = (</xsl:text><xsl:value-of select="$type"/><xsl:text>) result.get(</xsl:text>
                <xsl:value-of select="istoe:translate($name)"/><xsl:text>);&#10;</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
	</func:result>
</func:function>
                      
<func:function name="jname:oracleToJavaParamName">
	<xsl:param name="str"/>
	<xsl:variable name="param" select="java:replaceFirst(string($str), '^[IiOo]{1,2}_', '')"/>
	<func:result>
		<xsl:value-of select="jname:JavaClassName($param)"></xsl:value-of>
	</func:result>
</func:function>

<func:function name="jname:paramMethodFromOracle">
	<xsl:param name="oracleType"/>
	<xsl:param name="oracleName"/>
	<xsl:param name="oracleSize"/>
	<func:result>
		<xsl:value-of select="jname:oracleToJavaType($oracleType, $oracleSize)"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName($oracleName))"/>
	</func:result>
</func:function>

<func:function name="jname:JavaClassName">
	<xsl:param name="str"/>
	<func:result>
		<xsl:value-of select="istoe:fromUpperCase(istoe:removeAll_($str))"/>
	</func:result>
</func:function>

<func:function name="jname:JavaVarName">
	<xsl:param name="str"/>
	<func:result>
		<xsl:value-of select="istoe:fromLowerCase(istoe:removeAll_($str))"/>
	</func:result>
</func:function>

<!-- ISTOE EXTENSION -->
<!-- Удаляет все подчеркивания из строки, букву после подчеркивания устанавливается в верхний регистр-->
<func:function name="istoe:removeAll_">
	<xsl:param name="str"/>
	<func:result>
		<xsl:choose>
			<xsl:when test="contains($str,'_')">
				<xsl:value-of select="istoe:fromUpperCase(substring-before($str,'_'))"/>
				<xsl:value-of select="istoe:removeAll_(substring-after($str,'_'))"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="istoe:fromUpperCase($str)"/>
			</xsl:otherwise>
		</xsl:choose>
	</func:result>
</func:function>

<!-- Переводит строку в нужный регистр -->
<func:function name="istoe:translate">
	<xsl:param name="str"/>
	<xsl:param name="uppercase">true</xsl:param>
	<xsl:variable name="lowerCaseAlphabet">abcdefghijklmnopqrstuvwxyz</xsl:variable>
	<xsl:variable name="upperCaseAlphabet">ABCDEFGHIJKLMNOPQRSTUVWXYZ</xsl:variable>
	<xsl:choose>
		<xsl:when test="$uppercase='true'"><func:result select="translate($str,$lowerCaseAlphabet,$upperCaseAlphabet)"/></xsl:when>
		<xsl:otherwise><func:result select="translate($str,$upperCaseAlphabet,$lowerCaseAlphabet)"/></xsl:otherwise>
	</xsl:choose>
</func:function>

<!-- Выводит строку в текущий поток вывода с \n -->
<func:function name="istoe:log">
	<xsl:param name="str"/>
	<func:result select="concat($str,'&#10;')"/>
</func:function>

<!-- Переводит строку в строку с заглавной буквы -->
<func:function name="istoe:fromUpperCase">
	<xsl:param name="str"/>
	<func:result select="concat(istoe:translate(substring($str,1,1)),substring($str,2,string-length($str)-1))"/>
</func:function>

<!-- Переводит строку в строку с маленькой буквы -->
<func:function name="istoe:fromLowerCase">
	<xsl:param name="str"/>
	<func:result select="concat(istoe:translate(substring($str,1,1),'false'),substring($str,2,string-length($str)-1))"/>
</func:function>

<!-- Возвращает не пустой аргумент из двух (aka NVL) -->
<func:function name="istoe:ifEmpty">
	<xsl:param name="str1"/>
	<xsl:param name="str2"/>
    <xsl:choose>
        <xsl:when test="$str1 != ''"><func:result select="$str1"/></xsl:when>
        <xsl:otherwise><func:result select="$str2"/></xsl:otherwise>
    </xsl:choose>
</func:function>


<xsl:template match="/application">
	<xsl:variable name="applicationClassFile" select="jname:javaFileName(@basePath,concat(concat(@basePackage,'.'),istoe:translate(@name,'false')),concat(@name,'App'))"/>
	<xsltext>&lt;istoe&gt;&#10;</xsltext>
	
	<xsl:if test="@create = 'true'">
        <xsl:value-of select="istoe:log('Istoe auto generate Spring Boot Application version 1.0b')"/>
        <xsl:value-of select="istoe:log(concat('generate ',$applicationClassFile))"/>
        <!-- Application Class File -->
        <redirect:write file="{$applicationClassFile}">
            <xsl:value-of select="jname:packageLine(@basePackage,@name,'')"/>
            <xsl:value-of select="jname:defaultImportLines('appClass')"/>		
            <xsl:text>&#10;</xsl:text>
            <xsl:value-of select="jname:defaultAnnatationLines('appClass')"/>
            <xsl:text>public class </xsl:text><xsl:value-of select="@name"/><xsl:text>App {&#10;</xsl:text>
            <xsl:text>    public static void main(String[] args) {&#10;</xsl:text>
            <xsl:text>        SpringApplication.run(</xsl:text><xsl:value-of select="@name"/><xsl:text>App.class, args);&#10;</xsl:text>
            <xsl:text>    }&#10;</xsl:text>
            <xsl:text>}&#10;</xsl:text>
        </redirect:write>
	</xsl:if>
	
	<xsl:apply-templates select="service"/>
	<xsltext>&lt;/istoe&gt;&#10;</xsltext>
</xsl:template>

<xsl:template match="service">
	<xsl:variable name="serviceInterfaceClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.service'),concat(@name,'Service'))"/>
	<xsl:variable name="serviceImplClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.service.impl'),concat(@name,'ServiceImpl'))"/>
	<xsl:variable name="controllerClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.controller'),concat(@name,'Controller'))"/>
	
	<xsl:apply-templates select="method" mode="entity"/>
	<xsl:value-of select="istoe:log(concat('generate ',$serviceInterfaceClassFile))"/>
	
	<!-- Service Interface Class File -->
	<redirect:write file="{$serviceInterfaceClassFile}">
	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'service')"/>
    	<xsl:value-of select="jname:defaultImportLines('serviceClass')"/>	
		<xsl:apply-templates select="method" mode="importEntity"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>public interface </xsl:text><xsl:value-of select="@name"/><xsl:text>Service {&#10;&#10;</xsl:text>
		<xsl:apply-templates select="method" mode="interface"/>
		<xsl:text>&#10;}&#10;</xsl:text>
	</redirect:write>
	<xsl:value-of select="istoe:log(concat('generate ',$serviceImplClassFile))"/>
	<!-- Service Impl Class File -->
	<redirect:write file="{$serviceImplClassFile}">
	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'service.impl')"/>
    	<xsl:value-of select="jname:defaultImportLines('serviceImplClass')"/>	
    	<xsl:apply-templates select="method" mode="importEntity"/>
    	<xsl:apply-templates select="method" mode="importRepository"/>
		<xsl:text>import </xsl:text>
		<xsl:value-of select="/application/@basePackage"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.service.</xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Service;&#10;</xsl:text>
		<xsl:apply-templates select="method/procedure" mode="importType"/>	  
 		<xsl:text>&#10;</xsl:text>
 		<xsl:value-of select="jname:defaultAnnatationLines('serviceImplClass')"/>
 		<xsl:text>public class </xsl:text><xsl:value-of select="concat(@name,'ServiceImpl')"/>
 		<xsl:text> implements </xsl:text><xsl:value-of select="concat(@name,'Service')"/><xsl:text> {&#10;&#10;</xsl:text>
 		<xsl:for-each select="method">
 			<xsl:text>    private final </xsl:text>
 			<xsl:value-of select="jname:JavaClassName(@name)"/>
 			<xsl:text>Repository </xsl:text>
 			<xsl:value-of select="jname:JavaVarName(@name)"/>
 			<xsl:text>Repository;&#10;&#10;</xsl:text>
 		</xsl:for-each>
		<xsl:text>    @Autowired&#10;</xsl:text>
		<xsl:text>    public </xsl:text>
		<xsl:value-of select="concat(@name,'ServiceImpl')"/>
		<xsl:text>(&#10;</xsl:text>
		<xsl:for-each select="method">
			<xsl:text>            </xsl:text>
 			<xsl:value-of select="jname:JavaClassName(@name)"/>
 			<xsl:text>Repository </xsl:text>
 			<xsl:value-of select="jname:JavaVarName(@name)"/>
 			<xsl:text>Repository</xsl:text>
 			<xsl:if test="position()&lt;last()"><xsl:text>,&#10;</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&#10;    ) {&#10;</xsl:text>
		<xsl:for-each select="method">
			<xsl:text>        this.</xsl:text>
			<xsl:value-of select="jname:JavaVarName(@name)"/>
 			<xsl:text>Repository</xsl:text>	
 			<xsl:text> = </xsl:text>	
 			<xsl:value-of select="jname:JavaVarName(@name)"/>
 			<xsl:text>Repository</xsl:text>	
 			<xsl:text>;&#10;</xsl:text>
		</xsl:for-each>
		<xsl:text>    }&#10;</xsl:text>
		<xsl:apply-templates select="method" mode="serviceOverride"/>		
 		<xsl:text>}</xsl:text>
 	</redirect:write>
 	<xsl:value-of select="istoe:log(concat('generate ',$controllerClassFile))"/>
 	
 	<redirect:write file="{$controllerClassFile}">
 	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'controller')"/>
 		<xsl:value-of select="jname:defaultImportLines('controllerClass')"/>
 		<xsl:apply-templates select="method" mode="importEntity"/>
 		<xsl:text>import </xsl:text>
		<xsl:value-of select="/application/@basePackage"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.service.</xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Service;&#10;</xsl:text>  
 		<xsl:text>&#10;</xsl:text>
 		<xsl:value-of select="jname:defaultAnnatationLines('controllerClass')"/>
 		<xsl:text>@RequestMapping("/api/</xsl:text>	
 		<xsl:value-of select="istoe:translate(@name,'false')"/>
 		<xsl:text>")&#10;</xsl:text>	
		<xsl:text>public class </xsl:text><xsl:value-of select="@name"/><xsl:text>Controller {&#10;&#10;</xsl:text>
 		<xsl:text>    private final </xsl:text>
 		<xsl:variable name="service" select="concat(@name,'Service')"/>
 		<xsl:value-of select="$service"/>
 		<xsl:text> </xsl:text>
 		<xsl:value-of select="jname:JavaVarName($service)"/>
 		<xsl:text>;&#10;&#10;</xsl:text>
 		<xsl:text>    @Autowired&#10;</xsl:text>
 		<xsl:text>    public </xsl:text>
 		<xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Controller(</xsl:text>
 		<xsl:value-of select="jname:JavaClassName($service)"/>
 		<xsl:text> </xsl:text>
 		<xsl:value-of select="jname:JavaVarName($service)"/>
 		<xsl:text>) {&#10;</xsl:text>
 		<xsl:text>        this.</xsl:text>
 		<xsl:value-of select="jname:JavaVarName($service)"/>
 		<xsl:text> = </xsl:text>
 		<xsl:value-of select="jname:JavaVarName($service)"/>
 		<xsl:text>;&#10;    }&#10;&#10;</xsl:text>
 		<xsl:apply-templates select="method" mode="controller"/>
 		<xsl:text>}&#10;</xsl:text>
 	</redirect:write>
 	<xsl:apply-templates select="method" mode="repository"/>
 	<xsl:apply-templates select="method" mode="repositoryImpl"/>
</xsl:template>

<xsl:template match="method" mode="importEntity">
	<xsl:variable name="importEntity">
		<xsl:text>import </xsl:text>
		<xsl:value-of select="/application/@basePackage"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.entity.</xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
	</xsl:variable>
	<xsl:value-of select="concat($importEntity,'Request;&#10;')"/>
	<xsl:value-of select="concat($importEntity,'Response;&#10;')"/>
</xsl:template>

<xsl:template match="method" mode="importRepository">
	<xsl:variable name="import">
		<xsl:text>import </xsl:text>
		<xsl:value-of select="/application/@basePackage"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.repository.</xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
	</xsl:variable>
	<xsl:value-of select="concat($import,'Repository;&#10;')"/>
</xsl:template>

<xsl:template match="method" mode="interface">
	<xsl:text>    </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Response </xsl:text>
	<xsl:value-of select="jname:JavaVarName(@name)"/>
	<xsl:text>(@NotNull </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Request request);&#10;</xsl:text>
</xsl:template>

<xsl:template match="method" mode="controller">
	<xsl:value-of select="concat(concat('    @PostMapping(&quot;/', istoe:translate(@name, 'false')), '&quot;)&#10;')"/>
	<xsl:text>    @Timed&#10;</xsl:text>
	<xsl:text>    public </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Response </xsl:text>
	<xsl:value-of select="jname:JavaVarName(@name)"/>
	<xsl:text>(@Valid @RequestBody </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Request request) {&#10;</xsl:text>
	<xsl:text>        return </xsl:text>
	<xsl:value-of select="jname:JavaVarName(parent::service/@name)"/>
	<xsl:text>Service.</xsl:text>
	<xsl:value-of select="jname:JavaVarName(@name)"/>
	<xsl:text>(request);&#10;    }&#10;</xsl:text>
</xsl:template>

<xsl:template  match="method" mode="serviceOverride">
	<xsl:text>&#10;    @Override&#10;</xsl:text>
	<xsl:text>    public </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response </xsl:text>
	<xsl:value-of select="jname:JavaVarName(@name)"/>	
	<xsl:text>(@NotNull </xsl:text>	<xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Request request) {&#10;</xsl:text>	
	<xsl:text>        log.info(&quot;</xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text> request: {}&quot;, request);&#10;&#10;</xsl:text>
	
	<xsl:for-each select="procedure/param[@direction='in']">
		<xsl:text>        </xsl:text><xsl:value-of select="jname:requestGetParam(@name,@type,concat(@struct, @size))"/>
	</xsl:for-each>
	
	<xsl:text>&#10;</xsl:text>
	<xsl:text>        </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response response;&#10;</xsl:text>
	<xsl:text>        try {&#10;</xsl:text>
	<xsl:text>            response = </xsl:text><xsl:value-of select="jname:JavaVarName(@name)"/>
	<xsl:text>Repository.</xsl:text><xsl:value-of select="jname:JavaVarName(@name)"/><xsl:text>( </xsl:text>

	<xsl:for-each select="procedure/param[@direction='in']">
		<xsl:value-of select="jname:JavaVarName(jname:oracleToJavaParamName(@name))"/>	
		<xsl:if test="position()&lt;last()"><xsl:text>, </xsl:text></xsl:if>
	</xsl:for-each><xsl:text> );&#10;</xsl:text>

	<xsl:text>        } catch (RepositoryException e) {&#10;</xsl:text>
	<xsl:text>            log.error("Database error: {}", e.getMessage(), e);&#10;</xsl:text>
	<xsl:text>            response = new </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response()&#10;</xsl:text>
	<xsl:text>               .setResultCode(e.getResultCode())&#10;</xsl:text>
	<xsl:text>               .setMessage(e.getMessage());&#10;</xsl:text>
	<xsl:text>        }&#10;</xsl:text>
	<xsl:text>        log.info(&quot;</xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text> response: {}&quot;, response);&#10;</xsl:text>	
	<xsl:text>        return response;&#10;</xsl:text>
	<xsl:text>    }&#10;</xsl:text>
</xsl:template>

<xsl:template match="method" mode="entity">
	<xsl:variable name="entityRequestClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.entity'),concat(jname:JavaClassName(@name),'Request'))"/>
	<xsl:variable name="entityResponseClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.entity'),concat(jname:JavaClassName(@name),'Response'))"/>	
	<xsl:value-of select="istoe:log(concat('generate ',$entityRequestClassFile))"/>
	<redirect:write file="{$entityRequestClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'entity')"/>
		<xsl:value-of select="jname:defaultImportLines('entityRequestClass')"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="importTypeIn"/>		
		<xsl:text>&#10;</xsl:text>
		<xsl:value-of select="jname:defaultAnnatationLines('entityRequestClass')"/>
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Request {&#10;&#10;</xsl:text>
		<xsl:text>    private static final String DATE_PATTERN = "yyyy-MM-dd'T'HH:mm:ssX";&#10;&#10;</xsl:text>
		<xsl:apply-templates select="procedure/param[@direction='in']" mode="entityParamIn"/>
		<xsl:text>}&#10;</xsl:text>
	</redirect:write>
	<xsl:value-of select="istoe:log(concat('generate ',$entityResponseClassFile))"/>
	<redirect:write file="{$entityResponseClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'entity')"/>
		<xsl:value-of select="jname:defaultImportLines('entityResponseClass')"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="importTypeOut"/>	
		<xsl:text>&#10;</xsl:text>
		<xsl:value-of select="jname:defaultAnnatationLines('entityResponseClass')"/>
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Response {&#10;&#10;</xsl:text>
		<xsl:text>    private static final String DATE_PATTERN = "yyyy-MM-dd'T'HH:mm:ssX";&#10;&#10;</xsl:text>
		<xsl:apply-templates select="procedure/param[@direction='out']" mode="entityParamOut"/>
		<xsl:apply-templates select="structure" mode="entityOut"/>
		<xsl:text>}&#10;</xsl:text>		
	</redirect:write>	
</xsl:template>

<xsl:template match="method" mode="repository">
	<xsl:variable name="repositoryClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.repository'),concat(jname:JavaClassName(@name),'Repository'))"/>
	<xsl:value-of select="istoe:log(concat('generate ',$repositoryClassFile))"/>
	<redirect:write file="{$repositoryClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'repository')"/>
		<xsl:value-of select="jname:defaultImportLines('repositoryClass')"/>
		<xsl:text>import </xsl:text>
		<xsl:value-of select="/application/@basePackage"/>
		<xsl:text>.</xsl:text>
		<xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.entity.</xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Response;&#10;</xsl:text>
		<xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="importType"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>public interface </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Repository {&#10;&#10;</xsl:text>
		<xsl:text>    </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Response </xsl:text>
		<xsl:value-of select="jname:JavaVarName(@name)"/>
		<xsl:text>(&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in']">
			<xsl:text>                </xsl:text>
			<xsl:choose>
				<xsl:when test="@null"><xsl:text>@Nullable </xsl:text></xsl:when>
				<xsl:otherwise><xsl:text>@NotNull </xsl:text></xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="jname:paramMethodFromOracle(@type,@name,@size)"/>
			<xsl:if test="position()&lt;last()"><xsl:text>,&#10;</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&#10;    );&#10;&#10;</xsl:text>
		<xsl:text>}&#10;</xsl:text>
	</redirect:write>
</xsl:template>

<xsl:template match="method" mode="repositoryImpl">
	<xsl:variable name="repositoryImplClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.repository.impl'),concat(jname:JavaClassName(@name),'RepositoryImpl'))"/>
	<xsl:value-of select="istoe:log(concat('generate ',$repositoryImplClassFile))"/>
	<redirect:write file="{$repositoryImplClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'repository.impl')"/>
		<xsl:value-of select="jname:defaultImportLines('repositoryImplClass')"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="importType"/>
		<xsl:variable name="importResponse">
            <xsl:text>import </xsl:text><xsl:value-of select="/application/@basePackage"/><xsl:text>.</xsl:text>
            <xsl:value-of select="istoe:translate(/application/@name,'false')"/>
            <xsl:text>.entity.</xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response</xsl:text>
		</xsl:variable>
		<xsl:value-of select="$importResponse"/><xsl:text>;&#10;</xsl:text>
		<xsl:value-of select="$importResponse"/><xsl:text>.*;&#10;</xsl:text>
		<xsl:text>import ru.tinkoff.tpmi.repository.RepositoryException;&#10;</xsl:text>
		<xsl:text>import </xsl:text><xsl:value-of select="/application/@basePackage"/><xsl:text>.</xsl:text><xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.repository.</xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Repository;&#10;</xsl:text>		
		<xsl:text>&#10;</xsl:text>		
		<xsl:value-of select="jname:defaultAnnatationLines('repositoryImplClass')"/><xsl:text>&#10;</xsl:text>	
		
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="concat(jname:JavaClassName(@name),'RepositoryImpl')"/>
		<xsl:text> implements </xsl:text><xsl:value-of select="concat(jname:JavaClassName(@name),'Repository')"/><xsl:text> {&#10;&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="constant"/>	
		<xsl:apply-templates select="structure" mode="constant"/>	
    	<xsl:text>    private final JdbcTemplate jdbcTemplate;&#10;</xsl:text>
   		<xsl:text>    private final SimpleJdbcCall jdbcCall;&#10;</xsl:text>
		<xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="structure" mode="extractorDeclare"/>
		<xsl:text>&#10;</xsl:text>
		
		<!--
		
            Constructor 
            
		-->
		
    	<xsl:text>    @Autowired&#10;</xsl:text>
		<xsl:text>    public </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>RepositoryImpl(JdbcTemplate jdbcTemplate) {&#10;</xsl:text>
		<xsl:text>        this.jdbcTemplate = jdbcTemplate;&#10;&#10;</xsl:text>
		
		<xsl:apply-templates select="structure" mode="extractorBuild"/>
		
		<xsl:text>        this.jdbcCall = new SimpleJdbcCall(jdbcTemplate)&#10;</xsl:text>
		<xsl:text>            .withoutProcedureColumnMetaDataAccess()&#10;</xsl:text>
		<xsl:text>            .withNamedBinding()&#10;</xsl:text>
		<xsl:text>            .withSchemaName(SCHEMA)&#10;</xsl:text>
		<xsl:text>            .withCatalogName(PACKAGE)&#10;</xsl:text>
		<xsl:text>            .withProcedureName(PROCEDURE)&#10;</xsl:text>
		<xsl:text>            .declareParameters(&#10;</xsl:text>
		<xsl:for-each select="procedure/param">
			<xsl:text>               </xsl:text>
			<xsl:value-of select="jname:newSqlParameter(@name,@type,@direction,@struct)"/>
			<xsl:if test="position()&lt;last()"><xsl:text>,</xsl:text></xsl:if>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
		<xsl:text>            );&#10;&#10;</xsl:text>
		<xsl:text>    }&#10;&#10;</xsl:text>
		
		<!--
		
            Method
            
		-->
		
        <xsl:text>    @Transactional&#10;</xsl:text>
        <xsl:text>    @Override&#10;</xsl:text>
        <xsl:text>    public </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response </xsl:text>
		<xsl:value-of select="jname:JavaVarName(@name)"/>
		<xsl:text>(&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in']">
            <xsl:text>                </xsl:text>
			<xsl:choose>
				<xsl:when test="@null"><xsl:text>@Nullable </xsl:text></xsl:when>
				<xsl:otherwise><xsl:text>@NotNull </xsl:text></xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="jname:paramMethodFromOracle(@type,@name,@size)"/>
			<xsl:if test="position()&lt;last()"><xsl:text>,&#10;</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>    ) {&#10;</xsl:text>
		<xsl:text>        MapSqlParameterSource params = new MapSqlParameterSource()&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in']">
			<xsl:text>                    </xsl:text><xsl:value-of select="jname:mapAddValue(@name)"/>
			<xsl:if test="position()=last()"><xsl:text>;</xsl:text></xsl:if>
			<xsl:text>&#10;</xsl:text>
		</xsl:for-each>
		<xsl:text>        Map&lt;String, Object&gt; result = jdbcCall.execute(params);&#10;</xsl:text>
		<xsl:text>        log.trace("Raw result of calling stored procedure ({}): {}", jdbcCall.getCallString(), result);&#10;</xsl:text>
		
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:text>        </xsl:text><xsl:value-of select="jname:mapResultGet(@name,@type,concat(@struct, @size))"/>
		</xsl:for-each>
		
		<xsl:text>&#10;</xsl:text>
		<xsl:text>        if (resultCode &lt; 0) throw new RepositoryException(resultCode, message);&#10;&#10;</xsl:text>
		
		<xsl:text>        log.debug(&quot;Result of calling stored procedure ({}): </xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName(@name))"/>
			<xsl:text>={}</xsl:text>
			<xsl:if test="position()&lt;last()"><xsl:text>, </xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&quot;, jdbcCall.getCallString()</xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:text>, </xsl:text>
			<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName(@name))"/>
		</xsl:for-each>
		<xsl:text>);&#10;</xsl:text>
		
		<xsl:text>        return new </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response()&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:text>                .set</xsl:text><xsl:value-of select="jname:oracleToJavaParamName(@name)"/><xsl:text>(</xsl:text>
			<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName(@name))"/>
			<xsl:text>)</xsl:text>
			<xsl:if test="position()&lt;last()"><xsl:text>&#10;</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>;&#10;</xsl:text>
		<xsl:text>    }&#10;</xsl:text>
		<xsl:text>}&#10;</xsl:text>
	</redirect:write>
</xsl:template>

<xsl:template match="procedure" mode="importType">
	<xsl:if test="param[@type='timestamp']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template match="procedure" mode="importTypeIn">
	<xsl:if test="param[@type='timestamp' and @direction='in']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template match="procedure" mode="importTypeOut">
	<xsl:if test="param[@type='timestamp' and @direction='out']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template match="procedure" mode="constant">
	<xsl:text>    private static final String SCHEMA = "</xsl:text><xsl:value-of select="istoe:translate(@schema)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>    private static final String PACKAGE = "</xsl:text><xsl:value-of select="istoe:translate(@package)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>    private static final String PROCEDURE = "</xsl:text><xsl:value-of select="istoe:translate(@name)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>&#10;</xsl:text>
	<xsl:for-each select="param[@direction='in']">
		<xsl:value-of select="jname:finalStringOracleParam(@name,@source)"/>
	</xsl:for-each>
	<xsl:text>&#10;</xsl:text>
	<xsl:for-each select="param[@direction='out']">
		<xsl:value-of select="jname:finalStringOracleParam(@name,@source)"/>
	</xsl:for-each>	
	<xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="structure" mode="constant">
	<xsl:text>    // </xsl:text><xsl:value-of select="@name"/><xsl:text>&#10;</xsl:text>
	<xsl:for-each select="attr">
		<xsl:value-of select="jname:finalStringOracleParam(@name,@source)"/>
	</xsl:for-each>	
	<xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="param" mode="entityParamIn">
	<xsl:if test="@direction='in'">
        <xsl:variable name="reqName" select="java:replaceFirst(istoe:translate(@name), '^[IO]{1,2}_', '')"/>
        <xsl:variable name="ident">
            <!--xsl:if test="name()='attr'"><xsl:text>    </xsl:text></xsl:if-->
		</xsl:variable>
        
        <xsl:value-of select="$ident"/>
		<xsl:text>    @JsonProperty(value = &quot;</xsl:text><xsl:value-of select="$reqName"/>
		<xsl:text>&quot;, required = </xsl:text>
		<xsl:choose>
			<xsl:when test="@null"><xsl:text>false</xsl:text></xsl:when>
			<xsl:otherwise><xsl:text>true</xsl:text></xsl:otherwise>
		</xsl:choose><xsl:text>)&#10;</xsl:text>
		
		<xsl:if test="@type = 'date' or @type = 'timestamp'">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DATE_PATTERN)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="@description != ''">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ApiModelProperty(value = &quot;</xsl:text><xsl:value-of select="@description"/><xsl:text>&quot;)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="not (@null)">
            <xsl:value-of select="$ident"/>
			<xsl:text>    @NotNull(message = &quot;Не указано поле </xsl:text><xsl:value-of select="$reqName"/><xsl:text>&quot;)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="@valid != ''">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ValidNumbers(value = {</xsl:text><xsl:value-of select="@valid"/>
            <xsl:text>}, message = &quot;Неверное значение поля </xsl:text><xsl:value-of select="$reqName"/>
            <xsl:text> (</xsl:text><xsl:value-of select="@valid"/><xsl:text>)&quot;)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="@pattern != ''">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @Pattern(regexp = "</xsl:text><xsl:value-of select="@pattern"/>
            <xsl:text>", message = &quot;Неверное значение поля </xsl:text><xsl:value-of select="$reqName"/>
            <xsl:text> (шаблон '</xsl:text><xsl:value-of select="@pattern"/><xsl:text>')&quot;)&#10;</xsl:text>
		</xsl:if>
		
        <xsl:value-of select="$ident"/>
		<xsl:text>    private </xsl:text>
		<xsl:value-of select="jname:oracleToJavaType(@type, concat(@struct, @size))"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName(@name))"/>	
		<xsl:text>;&#10;&#10;</xsl:text>
	</xsl:if>
</xsl:template>

<xsl:template match="param | attr" mode="entityParamOut">
	<!--xsl:if test="@direction='out'"-->
        <xsl:variable name="reqName" select="java:replaceFirst(istoe:translate(@name), '^[IO]{1,2}_', '')"/>
        <xsl:variable name="ident">
            <xsl:if test="name()='attr'"><xsl:text>    </xsl:text></xsl:if>
		</xsl:variable>
		
		<xsl:value-of select="$ident"/>
		<xsl:text>    @JsonProperty(value = &quot;</xsl:text><xsl:value-of select="$reqName"/><xsl:text>&quot;, required = </xsl:text>
		<xsl:choose>
			<xsl:when test="@null"><xsl:text>false</xsl:text></xsl:when>
			<xsl:otherwise><xsl:text>true</xsl:text></xsl:otherwise>
		</xsl:choose><xsl:text>)&#10;</xsl:text>
		
		<xsl:if test="@type = 'date' or @type = 'timestamp'">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = DATE_PATTERN)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="@description != ''">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ApiModelProperty(value = &quot;</xsl:text><xsl:value-of select="@description"/><xsl:text>&quot;)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:if test="@valid != ''">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ValidNumbers(value = {</xsl:text><xsl:value-of select="@valid"/>
            <xsl:text>}, message = &quot;Неверное значение поля </xsl:text><xsl:value-of select="$reqName"/>
            <xsl:text> (</xsl:text><xsl:value-of select="@valid"/><xsl:text>)&quot;)&#10;</xsl:text>
		</xsl:if>
		
		<xsl:value-of select="$ident"/>
		<xsl:text>    private </xsl:text>
		<xsl:value-of select="jname:oracleToJavaType(@type, concat(@struct, @size))"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="istoe:fromLowerCase(jname:oracleToJavaParamName(@name))"/>	
		<xsl:text>;&#10;&#10;</xsl:text>
	<!--/xsl:if-->
 </xsl:template>

<xsl:template match="structure" mode="entityOut">
	<xsl:value-of select="jname:defaultAnnatationLines('entityResponseClass', '    ')"/>
	<xsl:text>    public static class </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text> {&#10;&#10;</xsl:text>
	<xsl:apply-templates select="attr" mode="entityParamOut"/>
	<xsl:text>    }&#10;&#10;</xsl:text>
</xsl:template>


<xsl:template match="structure" mode="extractorDeclare">
    <!--
    private final RowMapperResultSetExtractor<ClaimEvent> extractorClaimEvent;
    -->
    <xsl:variable name="class" select="jname:JavaClassName(@name)"/>
    <xsl:text>    private final RowMapperResultSetExtractor&lt;</xsl:text><xsl:value-of select="$class"/><xsl:text>&gt; extractor</xsl:text>
    <xsl:value-of select="$class"/><xsl:text>;&#10;</xsl:text>
</xsl:template>

 
<xsl:template match="structure" mode="extractorBuild">
    <!--
        this.extractorClaimEvent = new RowMapperResultSetExtractor<ClaimEvent>( new RowMapper<ClaimEvent>() {
            @Override
            public ClaimEvent mapRow(ResultSet rs, int rowNum) throws SQLException {
                ClaimEvent row = new ClaimEvent();
                row.setContractNum( rs.getString( CONTRACT_NUM ));
                row.setBalanceSheets( this.extractorBalanceSheet.extractData( rs.getArray( BALANCE_SHEETS ).getResultSet()  ).toArray( new BalanceSheet[0] ));
                return row;
            }
        });
	-->
    <xsl:variable name="class" select="jname:JavaClassName(@name)"/>
    <xsl:text>        this.extractor</xsl:text><xsl:value-of select="$class"/>
    <xsl:text> = new RowMapperResultSetExtractor&lt;</xsl:text><xsl:value-of select="$class"/>
    <xsl:text>&gt;( new RowMapper&lt;</xsl:text><xsl:value-of select="$class"/><xsl:text>&gt;() {&#10;</xsl:text>
    <xsl:text>            @Override&#10;</xsl:text>
    <xsl:text>            public </xsl:text><xsl:value-of select="$class"/><xsl:text> mapRow(ResultSet rs, int rowNum) throws SQLException {&#10;</xsl:text>
    <xsl:text>                </xsl:text><xsl:value-of select="$class"/><xsl:text> row = new </xsl:text><xsl:value-of select="$class"/><xsl:text>();&#10;</xsl:text>
	<xsl:for-each select="attr">
		<xsl:text>                row.set</xsl:text><xsl:value-of select="jname:oracleToJavaParamName(@name)"/><xsl:text>( </xsl:text>		
        <xsl:choose>
            <xsl:when test="@type = 'array'">
                <xsl:text>extractor</xsl:text><xsl:value-of select="jname:JavaClassName(@struct)"/>
                <xsl:text>.extractData( rs.getArray( </xsl:text><xsl:value-of select="istoe:translate(@name)"/>
                <xsl:text> ).getResultSet()  ).toArray( new </xsl:text><xsl:value-of select="jname:JavaClassName(@struct)"/><xsl:text>[0] )</xsl:text>
            </xsl:when>
            <xsl:when test="@type = 'cursor'">
                <xsl:text>null // TODO Cursor &#10;</xsl:text>
            </xsl:when>
            <xsl:when test="@type = 'struct'">
                <xsl:text>null // TODO Structure &#10;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>rs.</xsl:text><xsl:value-of select="jname:oracleToGetter(istoe:translate(@name), @type, @size)"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text> );&#10;</xsl:text>
	</xsl:for-each>
    <xsl:text>                return row;&#10;</xsl:text>
    <xsl:text>            }&#10;</xsl:text>
    <xsl:text>        });&#10;&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>
