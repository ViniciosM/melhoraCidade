import 'package:melhoracidade/core/enums/manifestation_category_enum.dart';
import 'package:melhoracidade/core/enums/manifestation_status_enum.dart';
import 'package:melhoracidade/data/dto/manifestation_dto.dart';

List<ManifestationDTO> manifestationsMock = [
  ManifestationDTO(
    idManifestation: '1',
    idAuthor: 'Vinicios M.',
    title: 'Asfalto para ruas que acessam IFCE',
    description:
        'Há um fluxo de ônibus que transportam alunos para a Faculdade via ruas que necessitam serem asfaltadas para melhor logística, conforto e segurança de todos.',
    images: 'assets/images/01-AsfaltoIFCE.jpeg',
    status: ManifestationStatusEnum.notSolved,
    category: ManifestationCategoryEnum.infraestrutura,
    supportters: [],
    createdAt: DateTime(2024, 5, 5),
    updatedAt: DateTime(2024, 5, 6),
  ),
  ManifestationDTO(
    idManifestation: '2',
    idAuthor: 'Vinicius M.',
    title: 'Nova pintura para o Ginársio Deromi Melo',
    description:
        'Sabemos da importância do esporte e cultura na cidade. Assim, necessitados que haja um reforma no nosso querido Ginásio, palco de muitas alegrias e conquistas para os Crateuenses',
    images: 'assets/images/ginasio_deromi_melo.jpg',
    status: ManifestationStatusEnum.notSolved,
    category: ManifestationCategoryEnum.lazer,
    supportters: [],
    createdAt: DateTime(2024, 4, 1),
    updatedAt: DateTime(2024, 4, 1),
  ),
  ManifestationDTO(
    idManifestation: '3',
    idAuthor: 'Vinicios M.',
    title: 'Ausência ou pouca iluminação',
    description:
        'Pagamos caro em taxa de iluminação pública, e mesmo assim, há locais de grande movimento com pouquíssima iluminação',
    images: 'assets/images/falta-de-luz.jpg',
    status: ManifestationStatusEnum.notSolved,
    category: ManifestationCategoryEnum.dinheiroPublico,
    supportters: [],
    createdAt: DateTime(2024, 3, 2),
    updatedAt: DateTime(2024, 3, 4),
  ),
];
