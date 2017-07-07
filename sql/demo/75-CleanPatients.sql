use openeyes;

-- Rename some sample patients
UPDATE `contact` SET `title`='Mr', `first_name`='Abraham', `last_name`='Lincoln' WHERE `id`='8031';
UPDATE `contact` SET `first_name`='William', `last_name`='Shakespeare' WHERE `id`='8092';
UPDATE `contact` SET `title`='Mr', `first_name`='George', `last_name`='Washington' WHERE `id`='8095';
UPDATE `contact` SET `title`='Mr', `first_name`='Thomas', `last_name`='Jefferson' WHERE `id`='8096';
UPDATE `contact` SET `title`='Mr', `first_name`='Henry', `last_name`='Tudor' WHERE `id`='9489';
UPDATE `contact` SET `first_name`='Anne', `last_name`='Boleyn' WHERE `id`='9498';
UPDATE `contact` SET `title`='Mrs', `first_name`='Jane', `last_name`='Seymor' WHERE `id`='9499';
UPDATE `contact` SET `title`='Mr', `first_name`='Charles', `last_name`='Darwin' WHERE `id`='9690';
UPDATE `contact` SET `last_name`='Windsor', `maiden_name`='Mountbatten' WHERE `id`='9883';
UPDATE `contact` SET `first_name`='Karl', `last_name`='Marx' WHERE `id`='9691';
UPDATE `contact` SET `title`='Mr', `first_name`='Martain', `last_name`='Luther' WHERE `id`='104763';
UPDATE `contact` SET `title`='Mr', `first_name`='Cristopher', `last_name`='Columbus' WHERE `id`='111963';
UPDATE `contact` SET `first_name`='Isaac', `last_name`='Newton' WHERE `id`='118685';
UPDATE `contact` SET `first_name`='Theodore', `last_name`='Roosevelt' WHERE `id`='121690';
UPDATE `contact` SET `first_name`='Ludvig', `last_name`='Beethoven' WHERE `id`='133080';
UPDATE `contact` SET `title`='Mr', `first_name`='Winston', `last_name`='Churchill' WHERE `id`='164912';
UPDATE `contact` SET `title`='Mrs', `first_name`='Mary', `last_name`='Magdalene' WHERE `id`='173982';
UPDATE `contact` SET `title`='Mrs', `first_name`='Jacquline', `last_name`='Kennedy', `maiden_name`='Onassis' WHERE `id`='244422';
UPDATE `contact` SET `title`='Miss', `first_name`='Marilyn', `last_name`='Monroe' WHERE `id`='277931';
UPDATE `contact` SET `title`='Miss', `first_name`='Anne', `last_name`='Frank' WHERE `id`='378007';
UPDATE `contact` SET `first_name`='Catherine', `last_name`='Middleton' WHERE `id`='8093';

UPDATE `contact` SET `first_name`='Wolfgang', `last_name`='Mozart' WHERE `id`='9087';
UPDATE `contact` SET `first_name`='Ulysses', `last_name`='Grant' WHERE `id`='9088';
UPDATE `contact` SET `first_name`='Ronald', `last_name`='Reagan' WHERE `id`='9089';
UPDATE `contact` SET `first_name`='George', `last_name`='Bush' WHERE `id`='9090';
UPDATE `contact` SET `title`='Mr', `first_name`='Winston', `last_name`='Churchill' WHERE `id`='9091';
UPDATE `contact` SET `title`='Mr', `first_name`='Genghis', `last_name`='Khan' WHERE `id`='9092';
UPDATE `contact` SET `title`='Mr', `first_name`='Thomas', `last_name`='Edison' WHERE `id`='9093';
UPDATE `contact` SET `first_name`='Friedrich', `last_name`='Nietzsche' WHERE `id`='9094';
UPDATE `contact` SET `title`='Mr', `first_name`='Franklin', `last_name`='Roosevelt' WHERE `id`='9095';
UPDATE `contact` SET `title`='Mr', `first_name`='Sigmund', `last_name`='Freud' WHERE `id`='9096';
UPDATE `contact` SET `first_name`='Woodrow', `last_name`='Wilson' WHERE `id`='9097';
UPDATE `contact` SET `title`='Mr', `first_name`='Johann', `last_name`='Bach' WHERE `id`='9098';
UPDATE `contact` SET `first_name`='Galileo', `last_name`='Galilei' WHERE `id`='9099';
UPDATE `contact` SET `first_name`='Oliver', `last_name`='Cromwell' WHERE `id`='9100';
UPDATE `contact` SET `first_name`='Gautama', `last_name`='Buddha' WHERE `id`='9101';
UPDATE `contact` SET `first_name`='Mark', `last_name`='Twain' WHERE `id`='9102';
UPDATE `contact` SET `title`='Mr', `first_name`='Edgar Allan', `last_name`='Poe' WHERE `id`='9103';
UPDATE `contact` SET `title`='Mr', `first_name`='Joseph (Jr.)', `last_name`='Smith' WHERE `id`='9104';
UPDATE `contact` SET `title`='Mr', `first_name`='James', `last_name`='Cook' WHERE `id`='9105';
UPDATE `contact` SET `title`='Mr', `first_name`='John', `last_name`='Adams' WHERE `id`='9106';
UPDATE `contact` SET `title`='Mr', `first_name`='Richard', `last_name`='Wagner' WHERE `id`='9107';
UPDATE `contact` SET `title`='Mr', `first_name`='Pyotr Illyich', `last_name`='Tchaikovsky' WHERE `id`='9108';
UPDATE `contact` SET `title`='Mr', `first_name`='Andrew', `last_name`='Jackson' WHERE `id`='9109';
UPDATE `contact` SET `first_name`='Elvis', `last_name`='Presley' WHERE `id`='9110';
UPDATE `contact` SET `first_name`='Vincent', `last_name`='Van Gogh' WHERE `id`='9111';
UPDATE `contact` SET `last_name`='Dickinson' WHERE `id`='9112';
UPDATE `contact` SET `first_name`='Nicolaus', `last_name`='Copernicus' WHERE `id`='9113';
UPDATE `contact` SET `title`='Mr', `first_name`='John', `last_name`='Lenin' WHERE `id`='9114';
UPDATE `contact` SET `title`='Mr', `first_name`='Oscar', `last_name`='Wilde' WHERE `id`='9115';
UPDATE `contact` SET `first_name`='Richard', `last_name`='Nixon' WHERE `id`='9116';
UPDATE `contact` SET `title`='Mr', `first_name`='Nikola', `last_name`='Tesla' WHERE `id`='9117';
UPDATE `contact` SET `first_name`='Harry', `last_name`='Truman' WHERE `id`='9118';
UPDATE `contact` SET `title`='Miss', `first_name`='Joan', `last_name`='Of Arc' WHERE `id`='9119';
UPDATE `contact` SET `first_name`='Otto', `last_name`='Von Bismarck' WHERE `id`='9120';
UPDATE `contact` SET `first_name`='John', `last_name`='Locke' WHERE `id`='9121';



-- Sync patient and contact names
UPDATE patient p INNER JOIN contact c ON c.id = p.contact_id SET p.gender =
CASE
    WHEN c.title IN ('Mr', 'mr', 'master') THEN 'M'
    WHEN c.title IN ('Mrs', 'Miss', 'Ms') THEN 'F'
    ELSE 'U'
END;
