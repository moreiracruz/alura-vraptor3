package br.com.caelum.online.loja.controlador;

import java.util.List;

import br.com.caelum.online.loja.dominio.Produto;
import br.com.caelum.online.loja.repositorio.RepositorioDeProdutos;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;
import br.com.caelum.vraptor.validator.Validations;
import br.com.caelum.vraptor.view.Results;

@Resource
public class ProdutoController {

	private final Result result;
	private final RepositorioDeProdutos produtos;
	private final Validator validator;

	public ProdutoController(Result result, Validator validator, RepositorioDeProdutos produtos) {
		this.result = result;
		this.validator = validator;
		this.produtos = produtos;
	}

	public void formulario() {

	}

	@Post
	public void adiciona(final Produto produto) {

		// if(produto.getPreco() < 0.1) {
		// validator.add(new ValidationMessage("O preço tem que ser maior que R$ 0,00", "preco"));
		// }
		
		validator.checking(new Validations() {			
			{
				that(produto.getPreco() > 0.1, "erro", "produto.preco.invalido");
			}			
		});

		validator.onErrorUsePageOf(ProdutoController.class).formulario();

		produtos.salva(produto);
		result.include("mensagem", "Novo produto adicionado com sucesso!");
		result.redirectTo(ProdutoController.class).lista();
	}

	public List<Produto> lista() {
		return produtos.pegaTodos();
	}

	@Path("/produto/{id}")
	public Produto exibe(Long id) {
		return produtos.pegaPorId(id);
	}

	@Path("/produto/{id}/xml")
	public void exibeComoXML(Long id) {
		Produto produto = produtos.pegaPorId(id);
		result.use(Results.xml()).from(produto).serialize();
	}

	@Path("/produto/{id}/json")
	public void exibeComoJSON(Long id) {
		Produto produto = produtos.pegaPorId(id);
		result.use(Results.json()).from(produto).serialize();
	}

}
