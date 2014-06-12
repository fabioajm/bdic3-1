package br.com.ita.bdic3.hive.dao;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import br.com.ita.bdic3.entity.SuspeitaFraudeVO;
import br.com.ita.bdic3.factory.ConnectionFactoryHive;
import br.com.ita.bdic3.vo.PesquisaHiveVO;

public class AnaliseFraudesDaoTest {
	
	
	@Test
	//@Ignore
	public void test() throws SQLException {
		AnaliseFraudesDao analiseFraudesDao = new AnaliseFraudesDao();
		analiseFraudesDao.setConnectionFactoryHive(new ConnectionFactoryHive());
		List<SuspeitaFraudeVO> transacoesSuspeitas = analiseFraudesDao.fraudeLocalizacao(new PesquisaHiveVO());;
		System.out.println(transacoesSuspeitas.toString());
	}

}
