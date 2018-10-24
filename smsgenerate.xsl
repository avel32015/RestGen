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
		<item type="serviceImplClass">import lombok.RequiredArgsConstructor;&#10;</item>
		<item type="serviceImplClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="serviceImplClass">import org.springframework.beans.factory.annotation.Autowired;&#10;</item>
		<item type="serviceImplClass">import org.springframework.stereotype.Service;&#10;</item>
		
		<item type="controllerClass">import com.codahale.metrics.annotation.Timed;&#10;</item>
		<item type="controllerClass">import io.swagger.annotations.ApiOperation;&#10;</item>
		<item type="controllerClass">import javax.validation.Valid;&#10;</item>
		<item type="controllerClass">import lombok.RequiredArgsConstructor;&#10;</item>
		<item type="controllerClass">import org.springframework.beans.factory.annotation.Autowired;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.PostMapping;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RequestBody;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RequestMapping;&#10;</item>
		<item type="controllerClass">import org.springframework.web.bind.annotation.RestController;&#10;</item>
		
		<item type="repositoryClass">import java.math.BigDecimal;&#10;</item>
		<item type="repositoryClass">import java.util.Date;&#10;</item>
		<item type="repositoryClass">import java.util.List;&#10;</item>
		<item type="repositoryClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="repositoryClass">import org.jetbrains.annotations.Nullable;&#10;</item>
		
		<item type="repositoryImplClass">import lombok.RequiredArgsConstructor;&#10;</item>
		<item type="repositoryImplClass">import lombok.SneakyThrows;&#10;</item>
		<item type="repositoryImplClass">import lombok.extern.slf4j.Slf4j;&#10;</item>
		<item type="repositoryImplClass">import java.math.BigDecimal;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Array;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Connection;&#10;</item>
		<item type="repositoryImplClass">import java.sql.ResultSet;&#10;</item>
		<item type="repositoryImplClass">import java.sql.SQLException;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Struct;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Timestamp;&#10;</item>
		<item type="repositoryImplClass">import java.sql.Types;&#10;</item>
		<item type="repositoryImplClass">import java.util.Date;&#10;</item>
		<item type="repositoryImplClass">import java.util.Map;&#10;</item>
		<item type="repositoryImplClass">import java.util.List;&#10;</item>
		<item type="repositoryImplClass">import java.util.Objects;&#10;</item>
		<item type="repositoryImplClass">import java.util.stream.Collectors;&#10;</item>
		<item type="repositoryImplClass">import java.util.stream.Stream;&#10;</item>
		<item type="repositoryImplClass">import javax.sql.DataSource;&#10;</item>
		<item type="repositoryImplClass">import oracle.jdbc.OracleTypes;&#10;</item>
		<item type="repositoryImplClass">import oracle.jdbc.driver.OracleConnection;&#10;</item>
		<item type="repositoryImplClass">import org.jetbrains.annotations.NotNull;&#10;</item>
		<item type="repositoryImplClass">import org.jetbrains.annotations.Nullable;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.data.jdbc.support.oracle.SqlReturnStructArray;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.JdbcTemplate;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.SqlOutParameter;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.SqlParameter;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.core.simple.SimpleJdbcCall;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.jdbc.datasource.DataSourceUtils;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.stereotype.Repository;&#10;</item>
		<item type="repositoryImplClass">import org.springframework.transaction.annotation.Transactional;&#10;</item>
		<item type="repositoryImplClass">import ru.tinkoff.tpmi.util.ProcedureUtils;&#10;</item>
		<item type="repositoryImplClass">import ru.tinkoff.tpmi.repository.jdbc.BeanPropertyStructMapperWithConversionService;&#10;</item>
		
		<item type="entityRequestClass">import com.fasterxml.jackson.annotation.JsonFormat;&#10;</item>
		<item type="entityRequestClass">import com.fasterxml.jackson.annotation.JsonProperty;&#10;</item>
		<item type="entityRequestClass">import io.swagger.annotations.ApiModelProperty;&#10;</item>
		<item type="entityRequestClass">import java.math.BigDecimal;&#10;</item>
		<item type="entityRequestClass">import java.util.Date;&#10;</item>
		<item type="entityRequestClass">import java.util.List;&#10;</item>
		<item type="entityRequestClass">import javax.validation.ConstraintValidator;&#10;</item>
		<item type="entityRequestClass">import javax.validation.ConstraintValidatorContext;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.Max;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.Min;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.NotNull;&#10;</item>
		<item type="entityRequestClass">import javax.validation.constraints.Pattern;&#10;</item>
		<item type="entityRequestClass">import lombok.Data;&#10;</item>
		<item type="entityRequestClass">import lombok.NoArgsConstructor;&#10;</item>
		<item type="entityRequestClass">import lombok.experimental.Accessors;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.constraints.Length;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.constraints.NotBlank;&#10;</item>
		<item type="entityRequestClass">import org.hibernate.validator.constraints.ScriptAssert;&#10;</item>
		<item type="entityRequestClass">import ru.tinkoff.tpmi.validation.ValidNumbers;&#10;</item>
		<item type="entityRequestClass">import ru.tinkoff.tpmi.validation.ValidRequest;&#10;</item>
		
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonInclude;&#10;</item>
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonFormat;&#10;</item>
		<item type="entityResponseClass">import com.fasterxml.jackson.annotation.JsonProperty;&#10;</item>
		<item type="entityResponseClass">import io.swagger.annotations.ApiModelProperty;&#10;</item>
		<item type="entityResponseClass">import java.math.BigDecimal;&#10;</item>
		<item type="entityResponseClass">import java.util.Date;&#10;</item>
		<item type="entityResponseClass">import java.util.List;&#10;</item>
		<item type="entityResponseClass">import javax.validation.constraints.Max;&#10;</item>
		<item type="entityResponseClass">import javax.validation.constraints.Min;&#10;</item>
		<item type="entityResponseClass">import javax.validation.constraints.NotNull;&#10;</item>
		<item type="entityResponseClass">import lombok.Data;&#10;</item>
		<item type="entityResponseClass">import lombok.EqualsAndHashCode;&#10;</item>
		<item type="entityResponseClass">import lombok.NoArgsConstructor;&#10;</item>
		<item type="entityResponseClass">import lombok.experimental.Accessors;&#10;</item>
		<item type="entityResponseClass">import org.hibernate.validator.constraints.Length;&#10;</item>
		<item type="entityResponseClass">import org.hibernate.validator.constraints.NotBlank;&#10;</item>
		<item type="entityResponseClass">import ru.tinkoff.tpmi.validation.ValidNumbers;&#10;</item>
		<item type="entityResponseClass">import static com.fasterxml.jackson.annotation.JsonInclude.Include;&#10;</item>
		
	</import>
	<annatation>
		<item type="appClass">@SpringBootApplication(exclude = MetricsDropwizardAutoConfiguration.class)&#10;</item>
		<item type="serviceImplClass">@Service&#10;</item>
		<item type="serviceImplClass">@Slf4j&#10;</item>
		<item type="serviceImplClass">@RequiredArgsConstructor&#10;</item>
		<item type="controllerClass">@RestController&#10;</item>
		<item type="controllerClass">@RequiredArgsConstructor&#10;</item>
		<item type="repositoryImplClass">@Repository&#10;</item>
		<item type="repositoryImplClass">@RequiredArgsConstructor&#10;</item>
		<item type="repositoryImplClass">@Slf4j&#10;</item>
		
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
                    <!--
                    <xsl:when test="$subtype &lt; 10"><xsl:text>Integer</xsl:text></xsl:when>
                    <xsl:when test="$subtype &gt;= 10"><xsl:text>Long</xsl:text></xsl:when>
                    -->
                    <xsl:otherwise><xsl:text>BigDecimal</xsl:text></xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:when test="$oracleType='integer'"><xsl:text>Integer</xsl:text></xsl:when>
            <xsl:when test="$oracleType='long'"><xsl:text>Long</xsl:text></xsl:when>
            <xsl:when test="$oracleType='numeric'"><xsl:text>Long</xsl:text></xsl:when>
            <xsl:when test="$oracleType='varchar2'"><xsl:text>String</xsl:text></xsl:when>
            <xsl:when test="$oracleType='string'"><xsl:text>String</xsl:text></xsl:when>
            <xsl:when test="$oracleType='timestamp'"><xsl:text>Date</xsl:text></xsl:when>
            <xsl:when test="$oracleType='date'"><xsl:text>Date</xsl:text></xsl:when>
            <xsl:when test="$oracleType='array'"><xsl:value-of select="concat('List&lt;',concat($class, '&gt;'))"/></xsl:when>
            <xsl:when test="$oracleType='cursor'"><xsl:value-of select="concat('List&lt;',concat($class, '&gt;'))"/></xsl:when>
            <xsl:when test="$oracleType='struct'"><xsl:value-of select="$class"/></xsl:when>
            <xsl:when test="$oracleType='enum'"><xsl:value-of select="$class"/></xsl:when>
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
        <xsl:variable name="reqName" select="jname:oracleToStaticName($name)"/>
		<xsl:text>    private static final String </xsl:text>
		<xsl:value-of select="istoe:translate($reqName)"/>
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
		<xsl:value-of select="jname:oracleToStaticName($name)"/>
		<xsl:text>, </xsl:text>
		<xsl:if test="$type='cursor'"><xsl:text>Oracle</xsl:text></xsl:if>
		<xsl:text>Types.</xsl:text>
		<xsl:if test="$type='number'"><xsl:text>NUMERIC</xsl:text></xsl:if>
		<xsl:if test="$type='integer'"><xsl:text>INTEGER</xsl:text></xsl:if>
		<xsl:if test="$type='numeric'"><xsl:text>NUMERIC</xsl:text></xsl:if>
		<xsl:if test="$type='long'"><xsl:text>BIGINT</xsl:text></xsl:if>
		<xsl:if test="$type='varchar2'"><xsl:text>VARCHAR</xsl:text></xsl:if>
		<xsl:if test="$type='string'"><xsl:text>VARCHAR</xsl:text></xsl:if>
		<xsl:if test="$type='enum'"><xsl:text>VARCHAR</xsl:text></xsl:if>
		<xsl:if test="$type='timestamp'"><xsl:text>TIMESTAMP</xsl:text></xsl:if>
		<xsl:if test="$type='date'"><xsl:text>TIMESTAMP</xsl:text></xsl:if>
        <xsl:if test="$type='array'"><xsl:text>ARRAY, </xsl:text><xsl:value-of select="jname:oracleToStaticName($name)"/><xsl:text>_TYPE</xsl:text>
            <xsl:if test="$direction='out'">
                <xsl:text>,&#10;                    new SqlReturnStructArray&lt;</xsl:text>
                <xsl:value-of select="jname:JavaClassName($subtype)"/>
                <xsl:text>&gt;(BeanPropertyStructMapperWithConversionService.newInstance(</xsl:text>
                <xsl:value-of select="jname:JavaClassName($subtype)"/><xsl:text>.class))</xsl:text>
            </xsl:if>
        </xsl:if>
        <xsl:if test="$type='cursor'">
            <xsl:text>CURSOR, BeanPropertyRowMapper.newInstance(</xsl:text>
            <xsl:value-of select="jname:JavaClassName($subtype)"/>
            <xsl:text>.class)</xsl:text>
        </xsl:if>
        <xsl:if test="$type='struct'"><xsl:text>STRUCT</xsl:text></xsl:if>
        <xsl:if test="$type='blob'"><xsl:text>BLOB</xsl:text></xsl:if>
		<xsl:text>)</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:mapAddValue">
	<xsl:param name="name"/>
	<xsl:param name="source"/>
	<xsl:param name="type"/>
	<xsl:param name="isFirst" select="false()"/>
	<func:result>
        <xsl:if test = "$isFirst=false()"><xsl:text>.addValue</xsl:text></xsl:if>
        <xsl:text>(</xsl:text>
        <xsl:value-of select="jname:oracleToStaticName(istoe:ifEmpty($source, $name))"/>
        <xsl:text>, </xsl:text>
        <xsl:if test = "$type='array'"><xsl:text>new OracleSqlArrayValue&lt;&gt;(</xsl:text></xsl:if>
        <xsl:value-of select="jname:oracleToJavaParamName($name)"/>
        <xsl:if test = "$type='array'"><xsl:text>)</xsl:text></xsl:if>
        <xsl:text>)</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:oracleToGetter">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<xsl:param name="subtype"/>
	<xsl:variable name="javaType" select="jname:oracleToJavaType($type, $subtype)"/>
	<func:result>
        <xsl:text>get</xsl:text>
        <xsl:choose>
            <xsl:when test="$javaType='Integer'"><xsl:text>Int</xsl:text></xsl:when>
            <xsl:when test="$type='timestamp'"><xsl:text>Timestamp</xsl:text></xsl:when>
            <xsl:when test="$type='array'"><xsl:text>Array</xsl:text></xsl:when>
            <xsl:when test="$type='struct'"><xsl:text>Object</xsl:text></xsl:when>
            <xsl:when test="$type='cursor'"><xsl:text>Object</xsl:text></xsl:when>
            <xsl:otherwise><xsl:value-of select="$javaType"/></xsl:otherwise>
        </xsl:choose>
        <xsl:text>( </xsl:text><xsl:value-of select="$name"/><xsl:text> )</xsl:text>
	</func:result>
</func:function>

<func:function name="jname:requestGetParam">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<xsl:param name="subtype"/>
	<func:result>
		<xsl:value-of select="jname:oracleToJavaType($type, $subtype)"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="jname:oracleToJavaParamName($name)"/>	
		<xsl:text> = request.get</xsl:text>
		<xsl:value-of select="jname:oracleToJavaParamName($name, true())"/>
		<xsl:text>();&#10;</xsl:text>
	</func:result>
</func:function>


<func:function name="jname:resultGet">
	<xsl:param name="name"/>
	<xsl:param name="type"/>
	<xsl:param name="subtype"/>
	<xsl:variable name="class" select="jname:JavaClassName($subtype)"/>
	<func:result>
        <xsl:choose>
            <!-- 
            (List<DetailData>) result.get(DETAIL_DATA)
            -->
            <xsl:when test="$type = 'cursor'">
                <xsl:text>(List&lt;</xsl:text><xsl:value-of select="$class"/><xsl:text>&gt;) result.get(</xsl:text>
                <xsl:value-of select="jname:oracleToStaticName($name)"/><xsl:text>)</xsl:text>
            </xsl:when>
            
            <!-- 
            Stream.of((Object[]) result.get(O_CONTRACT_LIST)).map(o -> (Contract) o).collect(Collectors.toList())
            -->
            <xsl:when test="$type = 'array'">
                <xsl:text>Stream.of((Object[]) result.get(</xsl:text>
                <xsl:value-of select="jname:oracleToStaticName($name)"/><xsl:text>)).map(o -> (</xsl:text>
                <xsl:value-of select="$class"/>
                <xsl:text>) o).collect(Collectors.toList())</xsl:text>
            </xsl:when>
            
            <!-- 
            (DetailData) result.get(DETAIL_DATA)
            -->
            <xsl:when test="$type = 'struct'">
                <xsl:text>(</xsl:text><xsl:value-of select="$class"/>
                <xsl:text>) result.get(</xsl:text><xsl:value-of select="jname:oracleToStaticName($name)"/><xsl:text>)</xsl:text>
            </xsl:when>
            
            <!-- 
            (String) result.get(O_MESSAGE)
            -->
            <xsl:otherwise>
                <xsl:text>(</xsl:text><xsl:value-of select="jname:oracleToJavaType($type, $subtype)"/><xsl:text>) result.get(</xsl:text>
                <xsl:value-of select="jname:oracleToStaticName($name)"/><xsl:text>)</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
	</func:result>
</func:function>

<func:function name="jname:mapResultGet">
	<xsl:param name="name"/>
	<xsl:param name="source"/>
	<xsl:param name="type"/>
	<xsl:param name="subtype"/>
	<func:result>
        <xsl:value-of select="jname:oracleToJavaType($type, $subtype)"/><xsl:text> </xsl:text><xsl:value-of select="jname:oracleToJavaParamName($name)"/>
        <xsl:text> = </xsl:text><xsl:value-of select="jname:resultGet(istoe:ifEmpty($source, $name), $type, $subtype)"/><xsl:text>;&#10;</xsl:text>
        <xsl:if test="jname:oracleToJavaParamName($name)='message'">
            <xsl:text>        ProcedureUtils.validateCode(resultCode, message, getDataSource());&#10;</xsl:text>
        </xsl:if>
	</func:result>
</func:function>
                      
<func:function name="jname:oracleToJavaParamName">
	<xsl:param name="name"/>
	<xsl:param name="fromUpper" select="false()"/>
	<xsl:variable name="res" select="java:replaceFirst(string($name), '^[IiOo]{1,2}_', '')"/>
	<func:result>
        <xsl:if test="not($fromUpper)"><xsl:value-of select="jname:JavaVarName($res)"/></xsl:if>
		<xsl:if test="$fromUpper"><xsl:value-of select="jname:JavaClassName($res)"/></xsl:if>
	</func:result>
</func:function>

<func:function name="jname:oracleToStaticName">
	<xsl:param name="name"/>
	<xsl:param name="withPrefix" select="true()"/>
	<func:result>
		<xsl:if test="not($withPrefix)"><xsl:value-of select="java:replaceFirst(istoe:translate(string($name)), '^[IiOo]{1,2}_', '')"/></xsl:if>
		<xsl:if test="$withPrefix"><xsl:value-of select="istoe:translate(string($name))"/></xsl:if>
	</func:result>
</func:function>


<func:function name="jname:paramMethodFromOracle">
	<xsl:param name="oracleType"/>
	<xsl:param name="oracleName"/>
	<xsl:param name="oracleSize"/>
	<func:result>
		<xsl:value-of select="jname:oracleToJavaType($oracleType, $oracleSize)"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="jname:oracleToJavaParamName($oracleName)"/>
	</func:result>
</func:function>

<func:function name="jname:JavaClassName">
	<xsl:param name="name"/>
	<func:result>
		<xsl:value-of select="istoe:fromUpperCase(istoe:removeAll_($name))"/>
	</func:result>
</func:function>

<func:function name="jname:JavaVarName">
	<xsl:param name="name"/>
	<func:result>
		<xsl:value-of select="istoe:fromLowerCase(istoe:removeAll_($name))"/>
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
    <xsl:variable name="className" select="jname:JavaClassName(@name)"/>
	<xsl:variable name="service" select="concat($className,'Service')"/>
	<xsl:variable name="serviceInterfaceClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.service'),$service)"/>
	<xsl:variable name="serviceImplClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.service.impl'),concat($service,'Impl'))"/>
	<xsl:variable name="controllerClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.controller'),concat($className,'Controller'))"/>
	
	<xsl:apply-templates select="method" mode="entity"/>
	
	<!-- Service Interface Class File -->
	<xsl:value-of select="istoe:log(concat('generate ',$serviceInterfaceClassFile))"/>
	<redirect:write file="{$serviceInterfaceClassFile}">
	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'service')"/>
    	<xsl:value-of select="jname:defaultImportLines('serviceClass')"/>	
		<xsl:apply-templates select="method" mode="importEntity"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>public interface </xsl:text><xsl:value-of select="$service"/><xsl:text> {&#10;&#10;</xsl:text>
		<xsl:apply-templates select="method" mode="serviceInterface"/>
		<xsl:text>&#10;}&#10;</xsl:text>
	</redirect:write>
	
	<!-- Service Impl Class File -->
	<xsl:value-of select="istoe:log(concat('generate ',$serviceImplClassFile))"/>
	<redirect:write file="{$serviceImplClassFile}">
	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'service.impl')"/>
    	<xsl:value-of select="jname:defaultImportLines('serviceImplClass')"/>	
    	<xsl:apply-templates select="method" mode="importEntity"/>
    	<xsl:apply-templates select="method" mode="importRepository"/>
		<xsl:text>import </xsl:text><xsl:value-of select="/application/@basePackage"/><xsl:text>.</xsl:text><xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.service.</xsl:text><xsl:value-of select="$service"/><xsl:text>;&#10;</xsl:text>
		<xsl:apply-templates select="method/procedure" mode="importType"/>
 		<xsl:text>&#10;</xsl:text>
 		<xsl:value-of select="jname:defaultAnnatationLines('serviceImplClass')"/>
 		<xsl:text>public class </xsl:text><xsl:value-of select="concat($service,'Impl')"/>
 		<xsl:text> extends AbstractService implements </xsl:text><xsl:value-of select="$service"/><xsl:text> {&#10;&#10;</xsl:text>
 		<xsl:for-each select="method">
 			<xsl:text>    private final </xsl:text>
 			<xsl:value-of select="jname:JavaClassName(@name)"/>
 			<xsl:text>Repository </xsl:text>
 			<xsl:value-of select="jname:JavaVarName(@name)"/>
 			<xsl:text>Repository;&#10;</xsl:text>
 		</xsl:for-each>
        <xsl:text>&#10;</xsl:text>
		<xsl:apply-templates select="method" mode="serviceOverride"/>		
 		<xsl:text>}</xsl:text>
 	</redirect:write>
 	
 	<!-- Controller Class File  -->
 	<xsl:value-of select="istoe:log(concat('generate ',$controllerClassFile))"/>
 	<redirect:write file="{$controllerClassFile}">
 	   	<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'controller')"/>
 		<xsl:value-of select="jname:defaultImportLines('controllerClass')"/>
 		<xsl:apply-templates select="method" mode="importEntity"/>
 		<xsl:text>import </xsl:text><xsl:value-of select="/application/@basePackage"/><xsl:text>.</xsl:text><xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.service.</xsl:text><xsl:value-of select="$service"/><xsl:text>;&#10;</xsl:text>  
 		<xsl:text>&#10;</xsl:text>
 		<xsl:value-of select="jname:defaultAnnatationLines('controllerClass')"/>
 		<xsl:text>@RequestMapping("/api/</xsl:text>	
 		<xsl:value-of select="istoe:translate(istoe:ifEmpty(@call, @name),'false')"/>
 		<xsl:text>")&#10;</xsl:text>	
		<xsl:text>public class </xsl:text><xsl:value-of select="$className"/><xsl:text>Controller extends AbstractController {&#10;&#10;</xsl:text>
 		<xsl:text>    private final </xsl:text>
 		<xsl:value-of select="$service"/>
 		<xsl:text> </xsl:text>
 		<xsl:value-of select="jname:JavaVarName($service)"/>
 		<xsl:text>;&#10;&#10;</xsl:text>
 		
 		<xsl:apply-templates select="method" mode="controller"/>
 		<xsl:text>}&#10;</xsl:text>
 	</redirect:write>
 	
 	<!-- Repository Interface -->
 	<xsl:apply-templates select="method" mode="repository"/>

 	<!-- Repository Implementation -->
 	<xsl:apply-templates select="method" mode="repositoryImpl"/>
</xsl:template>

<xsl:template match="method" mode="serviceInterface">
	<xsl:text>    </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Response </xsl:text>
	<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/>
	<xsl:text>(@NotNull </xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Request request);&#10;</xsl:text>
</xsl:template>

<xsl:template  match="method" mode="serviceOverride">
	<xsl:text>    @Override&#10;</xsl:text>
	<xsl:text>    public </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response </xsl:text>
	<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/>	
	<xsl:text>(@NotNull </xsl:text>	<xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Request request) {&#10;</xsl:text>	
	<xsl:text>        log.debug(&quot;</xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text> request: {}&quot;, request);&#10;</xsl:text>
	
	<xsl:text>        </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response response = callAndTryAgainIfProcedurePackageIsBroken(&#10;</xsl:text>
	<xsl:text>                </xsl:text><xsl:value-of select="jname:JavaVarName(@name)"/><xsl:text>Repository,&#10;</xsl:text>
	<xsl:text>                () -&gt; </xsl:text><xsl:value-of select="jname:JavaVarName(@name)"/><xsl:text>Repository.</xsl:text><xsl:value-of select="concat(jname:JavaVarName(istoe:ifEmpty(@call, @name)), '(')"/>

	<xsl:for-each select="procedure/param[@direction='in']">
		<xsl:text>&#10;                        </xsl:text>
		<xsl:value-of select="concat('request.get', concat(jname:oracleToJavaParamName(@name, true()), '()'))"/>
		<xsl:if test="position() &lt; last()"><xsl:text>, </xsl:text></xsl:if>
	</xsl:for-each>
	<xsl:text>&#10;                )</xsl:text>
	<xsl:text>&#10;        );&#10;</xsl:text>

	<xsl:text>        log.debug(&quot;</xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text> response: {}&quot;, response);&#10;</xsl:text>	
	<xsl:text>        return response;&#10;</xsl:text>
	<xsl:text>    }&#10;&#10;</xsl:text>
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
	<xsl:if test="enum">
        <xsl:value-of select="concat($importEntity,'Request.*;&#10;')"/>
	</xsl:if>
	<xsl:value-of select="concat($importEntity,'Response;&#10;')"/>
	<xsl:if test="structure">
        <xsl:value-of select="concat($importEntity,'Response.*;&#10;')"/>
	</xsl:if>
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

<xsl:template match="method" mode="controller">
	<xsl:value-of select="concat(concat('    @PostMapping(&quot;/', istoe:translate(istoe:ifEmpty(@call, @name), 'false')), '&quot;)&#10;')"/>
	<xsl:text>    @Timed(name = &quot;</xsl:text>
    <xsl:value-of select="concat('/api/', istoe:translate(istoe:ifEmpty(../@call, ../@name),'false'))"/>	
	<xsl:value-of select="concat('/', istoe:translate(istoe:ifEmpty(@call, @name), 'false'))"/>
	<xsl:text>&quot;, absolute = true)&#10;</xsl:text>
	<xsl:if test="@description">
        <xsl:text>    @ApiOperation(&quot;</xsl:text><xsl:value-of select="@description"/><xsl:text>&quot;)&#10;</xsl:text>
	</xsl:if>
	<xsl:text>    public ResponseContainer&lt;</xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Response&gt; </xsl:text>
	<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/>
	<xsl:text>(@Valid @RequestBody RequestContainer&lt;</xsl:text>
	<xsl:value-of select="jname:JavaClassName(@name)"/>
	<xsl:text>Request&gt; requestContainer) {&#10;</xsl:text>
	<xsl:text>        return getAndWrapResponse(requestContainer, </xsl:text>
	<xsl:value-of select="jname:JavaVarName(parent::service/@name)"/>
	<xsl:text>Service::</xsl:text>
	<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/>
	<xsl:text>);&#10;    }&#10;</xsl:text>
</xsl:template>

<xsl:template match="procedure/param | structure/attr" mode="entityConstant">
    <xsl:if test="@size and (istoe:translate(@type,false)='string' or istoe:translate(@type,false)='varchar2') and @name != 'message'">
        <xsl:text>    private static final int </xsl:text><xsl:value-of select="jname:oracleToStaticName(@name, false)"/><xsl:text>_LENGTH = </xsl:text><xsl:value-of select="@size"/><xsl:text>;&#10;</xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template match="procedure/validation" mode="entityValidation">
    <xsl:text>@ValidRequest(value = &quot;</xsl:text><xsl:value-of select="@value"/>
    <xsl:text>&quot;, message = &quot;</xsl:text><xsl:value-of select="@message"/><xsl:text>&quot;)&#10;</xsl:text>
</xsl:template>

<xsl:template match="procedure/validation" mode="entityValidator">
    <xsl:variable name="classEntity"> 
        <xsl:value-of select="jname:JavaClassName(../../@name)"/>
        <xsl:if test="@direction='in'"><xsl:text>Request</xsl:text></xsl:if>
        <xsl:if test="@direction='out'"><xsl:text>Response</xsl:text></xsl:if>
    </xsl:variable>
    <xsl:text>    public static class </xsl:text><xsl:value-of select="$classEntity"/>
    <xsl:text>Validator implements ConstraintValidator&lt;ValidRequest, </xsl:text><xsl:value-of select="$classEntity"/><xsl:text>> {&#10;</xsl:text>
    <xsl:choose>
        <xsl:when test=".">
            <xsl:text>        </xsl:text>
            <xsl:value-of select="java:replaceAll(string(.), '^\s+|\s+$', '')"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>        @Override public void initialize(ValidRequest constraintAnnotation) {}&#10;</xsl:text>
            <xsl:text>        @Override public boolean isValid(</xsl:text><xsl:value-of select="$classEntity"/><xsl:text> value, ConstraintValidatorContext context) {&#10;</xsl:text>
            <xsl:text>            //TODO validation&#10;</xsl:text>
            <xsl:text>            return true;&#10;</xsl:text>
            <xsl:text>        }&#10;</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
    <xsl:text>    }&#10;&#10;</xsl:text>
</xsl:template>

<xsl:template match="method" mode="entity">
	<xsl:variable name="entityRequestClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.entity'),concat(jname:JavaClassName(@name),'Request'))"/>
	<xsl:variable name="entityResponseClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.entity'),concat(jname:JavaClassName(@name),'Response'))"/>	
	<xsl:value-of select="istoe:log(concat('generate ',$entityRequestClassFile))"/>
	<redirect:write file="{$entityRequestClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'entity')"/>
		<xsl:value-of select="jname:defaultImportLines('entityRequestClass')"/>
		<xsl:apply-templates select="procedure" mode="importTypeIn"/>		
		<xsl:text>&#10;</xsl:text>
		<xsl:value-of select="jname:defaultAnnatationLines('entityRequestClass')"/>
		<xsl:apply-templates select="procedure/validation[@direction='in']" mode="entityValidation"/>
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Request {&#10;&#10;</xsl:text>
        <xsl:if test="procedure/param[@direction='in' and @size and (istoe:translate(@type,false)='string' or istoe:translate(@type,false)='varchar2')]">
            <xsl:apply-templates select="procedure/param[@direction='in']" mode="entityConstant"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
		<xsl:apply-templates select="procedure/param[@direction='in']" mode="entityParam"/>
		<xsl:apply-templates select="enum" mode="entityIn"/>
		<xsl:apply-templates select="procedure/validation[@direction='in']" mode="entityValidator"/>
		<xsl:text>}&#10;</xsl:text>
	</redirect:write>
	<xsl:value-of select="istoe:log(concat('generate ',$entityResponseClassFile))"/>
	<redirect:write file="{$entityResponseClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'entity')"/>
		<xsl:value-of select="jname:defaultImportLines('entityResponseClass')"/>
		<xsl:apply-templates select="procedure" mode="importTypeOut"/>	
		<xsl:text>&#10;</xsl:text>
		<xsl:value-of select="jname:defaultAnnatationLines('entityResponseClass')"/>
		<xsl:text>@EqualsAndHashCode(callSuper=true)&#10;</xsl:text>
		<xsl:apply-templates select="procedure/validation[@direction='out']" mode="entityValidation"/>
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/>
		<xsl:text>Response extends AbstractResponse {&#10;&#10;</xsl:text>
        <xsl:if test="procedure/param[@direction='out' and @size and (istoe:translate(@type,false)='string' or istoe:translate(@type,false)='varchar2') and @name != 'message']">
            <xsl:apply-templates select="procedure/param[@direction='out'] | structure/attr" mode="entityConstant"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
		<xsl:text>    public </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response(Integer resultCode, String message) {&#10;</xsl:text>
		<xsl:text>        super(resultCode, message);&#10;</xsl:text>
		<xsl:text>    }&#10;&#10;</xsl:text>
		<xsl:apply-templates select="procedure/param[@direction='out']" mode="entityParam"/>
		<xsl:apply-templates select="structure" mode="entityOut"/>
		<xsl:apply-templates select="procedure/validation[@direction='out']" mode="entityValidator"/>
		<xsl:text>}&#10;</xsl:text>		
	</redirect:write>	
</xsl:template>



<xsl:template match="method" mode="repository">
	<xsl:variable name="repositoryClassFile" select="jname:javaFileName(/application/@basePath,concat(concat(concat(/application/@basePackage,'.'),istoe:translate(/application/@name,'false')),'.repository'),concat(jname:JavaClassName(@name),'Repository'))"/>
	<xsl:value-of select="istoe:log(concat('generate ',$repositoryClassFile))"/>
	<redirect:write file="{$repositoryClassFile}">
		<xsl:value-of select="jname:packageLine(/application/@basePackage,/application/@name,'repository')"/>
		<xsl:value-of select="jname:defaultImportLines('repositoryClass')"/>
		<xsl:apply-templates select="." mode="importEntity"/>
		<xsl:apply-templates select="procedure" mode="importType"/>
		<xsl:text>&#10;</xsl:text>
		<xsl:text>public interface </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Repository extends DataSourceSupplier {&#10;&#10;</xsl:text>
		<xsl:text>    </xsl:text>
		<xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response </xsl:text>
		<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/><xsl:text>(&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in']">
			<xsl:text>                </xsl:text>
			<xsl:choose>
				<xsl:when test="@null"><xsl:text>@Nullable </xsl:text></xsl:when>
				<xsl:otherwise><xsl:text>@NotNull </xsl:text></xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="jname:paramMethodFromOracle(@type,@name,concat(@struct, @size))"/>
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
        <xsl:apply-templates select="." mode="importEntity"/>
		<xsl:text>import </xsl:text><xsl:value-of select="/application/@basePackage"/><xsl:text>.</xsl:text><xsl:value-of select="istoe:translate(/application/@name,'false')"/>
		<xsl:text>.repository.</xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Repository;&#10;&#10;</xsl:text>
		<xsl:value-of select="jname:defaultAnnatationLines('repositoryImplClass')"/>
		
		<xsl:text>public class </xsl:text>
		<xsl:value-of select="concat(jname:JavaClassName(@name),'RepositoryImpl')"/>
		<xsl:text> implements </xsl:text><xsl:value-of select="concat(jname:JavaClassName(@name),'Repository')"/><xsl:text> {&#10;&#10;</xsl:text>
		<xsl:apply-templates select="procedure" mode="constantRepository"/>	
   		<xsl:text>    private final JdbcTemplate jdbcTemplate;&#10;&#10;</xsl:text>
		
		<!--
		
            Method
            
		-->
		<xsl:value-of select="java:replaceAll(string(procedure/description), '^\s+|\s+$', '')"/>
		<xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>    @Transactional&#10;</xsl:text>
        <xsl:text>    @Override&#10;</xsl:text>
        <xsl:text>    public </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response </xsl:text>
		<xsl:value-of select="jname:JavaVarName(istoe:ifEmpty(@call, @name))"/>
		<xsl:text>(</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in']">
            <xsl:text>&#10;                </xsl:text>
			<xsl:choose>
				<xsl:when test="@null"><xsl:text>@Nullable </xsl:text></xsl:when>
				<xsl:otherwise><xsl:text>@NotNull </xsl:text></xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="jname:paramMethodFromOracle(@type,@name,concat(@struct, @size))"/>
			<xsl:if test="position()&lt;last()"><xsl:text>,</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>) {&#10;</xsl:text>
		
		<xsl:text>        SimpleJdbcCall procedure = new SimpleJdbcCall(jdbcTemplate)&#10;</xsl:text>
		<xsl:text>            .withoutProcedureColumnMetaDataAccess()&#10;</xsl:text>
		<xsl:text>            .withNamedBinding()&#10;</xsl:text>
		<xsl:text>            .withSchemaName(SCHEMA)&#10;</xsl:text>
		<xsl:text>            .withCatalogName(PACKAGE)&#10;</xsl:text>
		<xsl:text>            .withProcedureName(PROCEDURE)&#10;</xsl:text>
		<xsl:text>            .declareParameters(</xsl:text>
		<xsl:for-each select="procedure/param[not(@null) or @direction='out']">
			<xsl:text>&#10;                </xsl:text>
			<xsl:value-of select="jname:newSqlParameter(istoe:ifEmpty(@source,@name),@type,@direction,@struct)"/>
			<xsl:if test="position()&lt;last()"><xsl:text>,</xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&#10;            );&#10;</xsl:text>
		
		<xsl:text>        MapSqlParameterSource params = new MapSqlParameterSource()</xsl:text>
		<xsl:for-each select="procedure/param[@direction='in' and not(@null)]">
            <xsl:text>&#10;            </xsl:text><xsl:value-of select="jname:mapAddValue(@name, @source, @type)"/>
		</xsl:for-each>
        <xsl:text>;&#10;&#10;</xsl:text>
		
		<xsl:for-each select="procedure/param[@direction='in' and @null]">
            <xsl:text>        if (</xsl:text><xsl:value-of select="jname:oracleToJavaParamName(@name)"/><xsl:text> != null) {&#10;</xsl:text>
            <xsl:text>            procedure.addDeclaredParameter(</xsl:text><xsl:value-of select="jname:newSqlParameter(istoe:ifEmpty(@source,@name),@type,@direction,@struct)"/><xsl:text>);&#10;</xsl:text>
            <xsl:text>            params</xsl:text><xsl:value-of select="jname:mapAddValue(@name, @source, @type)"/><xsl:text>;&#10;</xsl:text>
            <xsl:text>        }&#10;</xsl:text>
		</xsl:for-each>
		<xsl:if test="procedure/param[@direction='in' and @null]"><xsl:text>&#10;</xsl:text></xsl:if>
		
		<xsl:text>        Map&lt;String, Object&gt; result = procedure.execute(params);&#10;</xsl:text>
		<xsl:text>        log.trace("Raw result of calling stored procedure ({}): {}", procedure.getCallString(), result);&#10;</xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:text>        </xsl:text><xsl:value-of select="jname:mapResultGet(@name, @source, @type, concat(@struct, @size))"/>
		</xsl:for-each>
		<xsl:text>        log.debug(&quot;Result of calling stored procedure ({}): </xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:value-of select="jname:oracleToJavaParamName(@name)"/>
			<xsl:if test="@type='array' or @type='cursor'">.size()</xsl:if>
			<xsl:text>={}</xsl:text>
			<xsl:if test="position()&lt;last()"><xsl:text>, </xsl:text></xsl:if>
		</xsl:for-each>
		<xsl:text>&quot;, procedure.getCallString()</xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
			<xsl:text>, </xsl:text>
			<xsl:value-of select="jname:oracleToJavaParamName(@name)"/>
			<xsl:if test="@type='array' or @type='cursor'">.size()</xsl:if>
		</xsl:for-each>
		<xsl:text>);&#10;</xsl:text>
		
		<xsl:text>        return new </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text>Response(resultCode, message)</xsl:text>
		<xsl:for-each select="procedure/param[@direction='out']">
            <xsl:if test="jname:oracleToJavaParamName(@name) != 'resultCode' and @name!='message'">
            <xsl:text>&#10;</xsl:text>
			<xsl:text>            .set</xsl:text><xsl:value-of select="jname:oracleToJavaParamName(@name, true())"/><xsl:text>(</xsl:text>
			<xsl:value-of select="jname:oracleToJavaParamName(@name)"/>
			<xsl:text>)</xsl:text>
			</xsl:if>
		</xsl:for-each>
		<xsl:text>;&#10;</xsl:text>
		<xsl:text>    }&#10;&#10;</xsl:text>

        <xsl:text>    @NotNull&#10;</xsl:text>
        <xsl:text>    @Override&#10;</xsl:text>
        <xsl:text>    public DataSource getDataSource() {&#10;</xsl:text>
        <xsl:text>        return jdbcTemplate.getDataSource();&#10;</xsl:text>
        <xsl:text>    }&#10;</xsl:text>
		
		<xsl:text>}&#10;</xsl:text>
	</redirect:write>
</xsl:template>

<xsl:template match="procedure" mode="importType">
	<!--xsl:if test="param[@type='timestamp']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if-->
</xsl:template>

<xsl:template match="procedure" mode="importTypeIn">
	<!--xsl:if test="param[@type='timestamp' and @direction='in']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if-->
</xsl:template>

<xsl:template match="procedure" mode="importTypeOut">
	<!--xsl:if test="param[@type='timestamp' and @direction='out']">
		<xsl:text>import java.util.Date;&#10;</xsl:text>
	</xsl:if-->
</xsl:template>

<xsl:template match="procedure" mode="constantRepository">
	<xsl:text>    private static final String SCHEMA = "</xsl:text><xsl:value-of select="istoe:translate(@schema)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>    private static final String PACKAGE = "</xsl:text><xsl:value-of select="istoe:translate(@package)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>    private static final String PROCEDURE = "</xsl:text><xsl:value-of select="istoe:translate(@name)"/><xsl:text>";&#10;</xsl:text>
	<xsl:text>&#10;</xsl:text>
	<xsl:for-each select="param">
		<xsl:value-of select="jname:finalStringOracleParam(istoe:ifEmpty(@source, @name), @source)"/>
		<xsl:if test="@type='array'">
            <xsl:value-of select="jname:finalStringOracleParam(concat(@name, '_TYPE'),istoe:ifEmpty(@typename, @source))"/>
		</xsl:if>
	</xsl:for-each>
	<xsl:text>&#10;</xsl:text>
</xsl:template>

<xsl:template match="structure" mode="constantRepository">
    <xsl:variable name="structName" select="@name"/>
	<xsl:text>    private class </xsl:text><xsl:value-of select="@name"/><xsl:text>Fields {&#10;</xsl:text>
    <xsl:if test="../procedure/param[@type='array' and @struct=$structName] or ../structure/attr[@type='array' and @struct=$structName]">
        <xsl:for-each select="attr">
            <xsl:text>        static final int </xsl:text>
            <xsl:value-of select="jname:oracleToStaticName(istoe:ifEmpty(@source, @name))"/>
            <xsl:text> = </xsl:text>
            <xsl:value-of select="position() - 1"/>
            <xsl:text>;&#10;</xsl:text>
        </xsl:for-each>	
    </xsl:if>
    <xsl:if test="../procedure/param[@type='cursor' and @struct=$structName] or ../structure/attr[@type='cursor' and @struct=$structName]">
        <xsl:for-each select="attr">
            <xsl:text>        static final String </xsl:text>
            <xsl:value-of select="jname:oracleToStaticName(istoe:ifEmpty(@source, @name))"/>
            <xsl:text> = &quot;</xsl:text>
            <xsl:value-of select="@name"/>
            <xsl:text>&quot;;&#10;</xsl:text>
        </xsl:for-each>	
    </xsl:if>
	<xsl:text>    }&#10;&#10;</xsl:text>
</xsl:template>

<xsl:template match="param[@direction='in' or (@name != 'o_result_code' and @name != 'message')] | attr" mode="entityParam">
        <xsl:variable name="reqName" select="jname:oracleToStaticName(@name, false)"/>
        <xsl:variable name="ident">
            <xsl:if test="name()='attr'"><xsl:text>    </xsl:text></xsl:if>
		</xsl:variable>
		<xsl:value-of select="$ident"/>
		<xsl:text>    @JsonProperty(value = &quot;</xsl:text><xsl:value-of select="$reqName"/><xsl:text>&quot;, required = </xsl:text>
		<xsl:choose>
			<xsl:when test="@null"><xsl:text>false</xsl:text></xsl:when>
			<xsl:otherwise><xsl:text>true</xsl:text></xsl:otherwise>
		</xsl:choose>
		<xsl:if test="@default">
            <xsl:text>, defaultValue=&quot;</xsl:text><xsl:value-of select="@default"/><xsl:text>&quot;</xsl:text>
		</xsl:if>
		<xsl:text>)&#10;</xsl:text>
		<xsl:if test="istoe:translate(@type)='DATE' or istoe:translate(@type)='TIMESTAMP'">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @JsonFormat(shape = JsonFormat.Shape.STRING)&#10;</xsl:text>
		</xsl:if>
		<xsl:if test="istoe:translate(@type)='ENUM'">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @JsonFormat(shape = JsonFormat.Shape.STRING)&#10;</xsl:text>
		</xsl:if>
		<xsl:if test="@description">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ApiModelProperty(value = &quot;</xsl:text><xsl:value-of select="concat(@description, '&quot;')"/>
            <xsl:choose>
                <xsl:when test="@null"><xsl:text>, allowEmptyValue = true</xsl:text></xsl:when>
                <xsl:otherwise><xsl:text>, required = true</xsl:text></xsl:otherwise>
            </xsl:choose>
            <xsl:text>)&#10;</xsl:text>
		</xsl:if>
		<xsl:if test="@null and @direction='out'">
            <xsl:text>    @JsonInclude(Include.NON_NULL)&#10;</xsl:text>
		</xsl:if>
		<xsl:choose>
            <xsl:when test="istoe:translate(@type)='STRING' or istoe:translate(@type)='VARCHAR2'">
                <xsl:if test="not(@null)">
                    <xsl:value-of select="$ident"/>
                    <xsl:text>    @NotBlank(message = &quot;Пустое поле </xsl:text><xsl:value-of select="$reqName"/><xsl:text>&quot;)&#10;</xsl:text>
                </xsl:if>
                <xsl:if test="@size and name(.)='param'">
                    <xsl:value-of select="$ident"/>
                    <xsl:text>    @Length(max=</xsl:text><xsl:value-of select="$reqName"/><xsl:text>_LENGTH, message = &quot;Длина поля </xsl:text><xsl:value-of select="$reqName"/><xsl:text> превышает {max} символов&quot;)&#10;</xsl:text>
                </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <xsl:if test="not(@null)">
                    <xsl:value-of select="$ident"/>
                    <xsl:text>    @NotNull(message = &quot;Не указано поле </xsl:text><xsl:value-of select="$reqName"/><xsl:text>&quot;)&#10;</xsl:text>
                </xsl:if>
            </xsl:otherwise>
		</xsl:choose>
        <xsl:if test="@min">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @Min(value=</xsl:text><xsl:value-of select="@min"/><xsl:text>, message = &quot;Значение поля </xsl:text><xsl:value-of select="$reqName"/><xsl:text> меньше {value}&quot;)&#10;</xsl:text>
        </xsl:if>
        <xsl:if test="@max">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @Max(value=</xsl:text><xsl:value-of select="@max"/><xsl:text>, message = &quot;Значение поля </xsl:text><xsl:value-of select="$reqName"/><xsl:text> больше {value}&quot;)&#10;</xsl:text>
        </xsl:if>
		<xsl:if test="@valid">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @ValidNumbers(value = {</xsl:text><xsl:value-of select="@valid"/>
            <xsl:text>}, message = &quot;Неверное значение поля </xsl:text><xsl:value-of select="$reqName"/><xsl:value-of select="concat(' (',@valid)"/><xsl:text>)&quot;)&#10;</xsl:text>
		</xsl:if>
		<xsl:if test="@pattern">
            <xsl:value-of select="$ident"/>
            <xsl:text>    @Pattern(regexp = "</xsl:text><xsl:value-of select="@pattern"/>
            <xsl:text>", message = &quot;Неверное значение поля </xsl:text><xsl:value-of select="$reqName"/>
            <xsl:text> (шаблон: {regexp})&quot;)&#10;</xsl:text>
		</xsl:if>
		<xsl:value-of select="$ident"/>
		<xsl:text>    private </xsl:text>
		<xsl:value-of select="jname:oracleToJavaType(@type, concat(@struct, @size))"/>
		<xsl:text> </xsl:text>
		<xsl:value-of select="jname:oracleToJavaParamName(@name)"/>	
		<xsl:choose>
            <xsl:when test="@default">
                <xsl:text> = </xsl:text><xsl:value-of select="@default"/>
            </xsl:when>
            <xsl:when test="$reqName = 'RESULT_CODE'">
                <xsl:text> = SUCCESS_CODE</xsl:text>
            </xsl:when>
		</xsl:choose>
		<xsl:text>;&#10;&#10;</xsl:text>
 </xsl:template>

<xsl:template match="structure" mode="entityOut">
	<xsl:value-of select="jname:defaultAnnatationLines('entityResponseClass', '    ')"/>
	<xsl:text>    public static class </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text> {&#10;</xsl:text>
	<xsl:value-of select="java:replaceAll(string(description), '^\n', '')"/><xsl:text>&#10;</xsl:text>
	<xsl:apply-templates select="attr" mode="entityParam"/>
	<xsl:text>    }&#10;&#10;</xsl:text>
</xsl:template>

<xsl:template match="enum" mode="entityIn">
	<xsl:text>    public enum </xsl:text><xsl:value-of select="jname:JavaClassName(@name)"/><xsl:text> {&#10;</xsl:text>
    <xsl:for-each select="item">
        <xsl:text>        </xsl:text><xsl:value-of select="@name"/>
        <xsl:if test="position()&lt;last()"><xsl:text>,</xsl:text></xsl:if>
        <xsl:text>&#10;</xsl:text>
    </xsl:for-each>
	<xsl:text>    }&#10;&#10;</xsl:text>
</xsl:template>

</xsl:stylesheet>
