#language: pt

Funcionalidade: Realizar validações de Senha.

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | Teste@12345667 |
    Então o resultado deve ser isValidPassword
      | true |

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | T |
    Então o resultado deve ser isValidPassword
      | false |
    E deve retornar as seguintes mensagens de erro
      | Senha deve conter Nove ou mais caracteres |
      | Senha deve conter ao menos 1 letra minúscula |
      | Senha deve conter ao menos 1 dígito |
      | Senha deve conter ao menos 1 caractere especial |

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | teste@1234567 |
    Então o resultado deve ser isValidPassword
      | false |
    E deve retornar as seguintes mensagens de erro
      | Senha deve conter ao menos 1 letra maiúscula |

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | TESTE@1234567 |
    Então o resultado deve ser isValidPassword
      | false |
    E deve retornar as seguintes mensagens de erro
      | Senha deve conter ao menos 1 letra minúscula |

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | Testea1234567 |
    Então o resultado deve ser isValidPassword
      | false |
    E deve retornar as seguintes mensagens de erro
      | Senha deve conter ao menos 1 caractere especial |

  Cenário: Validar uma senha que atenda todos os requisitos
    Dado a seguinte senha
      | Testea@ascvdgg |
    Então o resultado deve ser isValidPassword
      | false |
    E deve retornar as seguintes mensagens de erro
      | Senha deve conter ao menos 1 dígito |