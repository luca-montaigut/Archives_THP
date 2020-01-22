def menu
  puts "\n*****************************************************************************************************************************"
  puts "|  11. AFFICHER LE HANDLE                                                                                                   |"
  puts "|   1. Combien y a-t-il de journalistes dans ce array ?                                                                     |"
  puts "|   2. Combien d'handle contiennent un numéro ?                                                                             |"
  puts "|   3. Combien d'handle contiennent les 4 lettres du prénom \"Aude\" à la suite (sans prendre en compte les majuscules) ?     |"
  puts "|   4. Combien commencent par une majuscule (première lettre juste après le @) ?                                            |"
  puts "|   5. Combien contiennent une majuscule ?                                                                                  |"
  puts "|   6. Combien y a-t-il de underscore _ dans tous les pseudos confondus ?                                                   |"
  puts "|   7. Trie la liste de handle par ordre alphabétique.                                                                      |"
  puts "|   8. Quels sont les 50 handles les plus courts de ce array ?                                                              |"
  puts "|   9. Quelle est la position dans l'array de la personne @epenser ?                                                        |"
  puts "|  99. QUITTER                                                                                                              |"
  puts "*****************************************************************************************************************************"
  puts "\nEntrez le numéro de votre choix pour afficher la réponse correspondante :"
  print "> "
  choice = gets.chomp.to_i
end

def answer (choice)
  handle = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]
  i = 0
  compt = 0
  case choice
  when 11
    puts "\nhandle = #{handle}"
  when 0
    puts "\n\n|-----------------------------------------------------------------------|"
    puts "| \"...zZzzz..zZzz...zZz... Hein ?! Le leak twitter... ouais je vois... !|"
    puts "|  Bon puisque tu es là je vais te filer une astuce :                   |"
    puts "|  Tape 10 pour avoir toutes les réponses d'un coup, vas-y essaye ! \"   |"
    puts "|-----------------------------------------------------------------------|"
    puts "                                                |_______________________________   _/)/)"
    puts "                                                                                  (-.- )"
    puts "                                                                                (\")(\")_o"
    puts "\n"
  when 1
    print "\n***** Réponse n° #{choice} *****"
    puts "\nIl y a #{handle.length} journalistes dans l'array\n"
  when 2
    print "\n***** Réponse n° #{choice} *****"
    handle.each do |i|
      if i.count("0-9") != 0
        compt += 1
      end 
    end
    puts "\nDans ce tableau il y a #{compt} handle qui contiennent un numéro\n"
  when 3
    print "\n***** Réponse n° #{choice} *****"
    #version simplifiée : puts handle.count {|i| i.include?("aude") || i.include?("Aude")} 
    handle.each do |i|
      if i.include?("aude") || i.include?("Aude") 
        compt += 1
      end 
    end
    puts "\nDans ce tableau il y a #{compt} handle qui contiennent \"aude\" ou \"Aude\"\n"
  when 4
    print "\n***** Réponse n° #{choice} *****"
    #version simplifiée : puts handle.count {|i| i[1] == i[1].upcase && i[1] != "_"}
    handle.each do |i|
      if i[1] == i[1].upcase && i[1] != "_"
        compt += 1
      end
    end
    puts "\nDans ce tableau il y a #{compt} handle qui commencent par une majuscule (après le @)\n"
  when 5
    print "\n***** Réponse n° #{choice} *****"
    #version simplifiée : puts handle.count {|i| i != i.downcase}
    handle.each do |i|
      if i != i.downcase
        compt += 1
      end
    end
    puts "\nDans ce tableau il y a #{compt} handle qui comportent une majuscule\n"
  when 6
    print "\n***** Réponse n° #{choice} *****"
    puts "\nDans tous les pseudos confondus il y a #{handle.join.count("_")} underscore_ " 
  when 7
    print "\n***** Réponse n° #{choice} *****"
    puts "\nLes handle par ordre alphabétiques sont :"
    puts handle.sort_by(&:downcase)
  when 8
    print "\n***** Réponse n° #{choice} *****"
    handle = handle.sort_by {|x| x.length}
    puts "\nLes 50 handle les plus court sont :"
    j = 0
    while j < 50   
    puts "#{j+1} : #{handle[j]}"
    j += 1
    end
  when 9
    print "\n***** Réponse n° #{choice} *****"
    puts "\nLe handle \"@epense\" a pour index : #{handle.index("@epenser")} ce qui le place en #{handle.index("@epenser")+1}ème position puisque l'on compte à partir de 0 pour l'index" #ps on commence à compter de 0
  when 99
    puts "\n=============================================================================================================================\n"
    puts "                                               Au revoir\n"
    puts "=============================================================================================================================\n\n"
    return 1
  when 10
  else
    puts "\n\nMauvaise commande, un peu de concentration stp !\n\n"
  end
end

def perform
  puts "\n=============================================================================================================================\n"
  puts "                                              Bonjour cher client,"
  puts "                          Voici l'analyse de la liste d'handle que vous nous avez fourni\n"
  puts "============================================================================================================================="
  choice = 0

  while choice != 99
    choice = menu    
    if choice == 10
      answer(1)
      answer(2)
      answer(3)
      answer(4)
      answer(5)
      answer(6)
      answer(7)
      answer(8)
      answer(9)
      puts "\n\n                               #####   Et voilà tu sais tout !  #####\n"
      choice = 99
    end
    answer (choice)
    if choice != 99 && choice != 0
      print "\nAppuyer sur Entrer pour revenir au menu"
      gets.chomp
    end
  end
end

perform

#tuto count version simplifiée : https://www.youtube.com/watch?v=x7kApCyizlo

#  (\(\_
#  ( -.-)       "See you in the next hole!"
#  o_(")(")                          - LazyRabbit