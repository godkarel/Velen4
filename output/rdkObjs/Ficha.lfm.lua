require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmvelen()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("com.velen");
    obj:setTitle("Velen 4");
    obj:setName("frmvelen");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setLeft(10);
    obj.tabControl1:setTop(10);
    obj.tabControl1:setWidth(2000);
    obj.tabControl1:setHeight(1000);
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Primeira Aba");
    obj.tab1:setName("tab1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.tab1);
    obj.edit1:setLeft(20);
    obj.edit1:setTop(10);
    obj.edit1:setWidth(75);
    obj.edit1:setHeight(20);
    obj.edit1:setField("HPRACAATE20");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.tab1);
    obj.edit2:setLeft(20);
    obj.edit2:setTop(40);
    obj.edit2:setWidth(75);
    obj.edit2:setHeight(20);
    obj.edit2:setField("HPRACAATE30");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.tab1);
    obj.edit3:setLeft(20);
    obj.edit3:setTop(70);
    obj.edit3:setWidth(75);
    obj.edit3:setHeight(20);
    obj.edit3:setField("HPRACAATE40");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.tab1);
    obj.edit4:setLeft(100);
    obj.edit4:setTop(10);
    obj.edit4:setWidth(75);
    obj.edit4:setType("number");
    obj.edit4:setMin(0);
    obj.edit4:setMax(20);
    obj.edit4:setHeight(20);
    obj.edit4:setField("RHPNivelAte20");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.tab1);
    obj.edit5:setLeft(100);
    obj.edit5:setTop(40);
    obj.edit5:setWidth(75);
    obj.edit5:setType("number");
    obj.edit5:setMin(0);
    obj.edit5:setMax(20);
    obj.edit5:setHeight(20);
    obj.edit5:setField("RHPNivelAte30");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.tab1);
    obj.edit6:setLeft(100);
    obj.edit6:setTop(70);
    obj.edit6:setWidth(75);
    obj.edit6:setType("number");
    obj.edit6:setMin(0);
    obj.edit6:setMax(20);
    obj.edit6:setHeight(20);
    obj.edit6:setField("RHPNivelAte40");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.tab1);
    obj.edit7:setLeft(200);
    obj.edit7:setTop(10);
    obj.edit7:setWidth(75);
    obj.edit7:setType("number");
    obj.edit7:setHeight(20);
    obj.edit7:setField("Level");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.tab1);
    obj.edit8:setLeft(20);
    obj.edit8:setTop(120);
    obj.edit8:setWidth(75);
    obj.edit8:setType("number");
    obj.edit8:setHeight(20);
    obj.edit8:setField("CHPNivel");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.tab1);
    obj.edit9:setLeft(20);
    obj.edit9:setTop(160);
    obj.edit9:setWidth(75);
    obj.edit9:setType("number");
    obj.edit9:setHeight(20);
    obj.edit9:setField("EHPNivel");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.tab1);
    obj.edit10:setLeft(20);
    obj.edit10:setTop(200);
    obj.edit10:setWidth(75);
    obj.edit10:setType("number");
    obj.edit10:setHeight(20);
    obj.edit10:setField("MHPNivel");
    obj.edit10:setName("edit10");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Segunda Aba");
    obj.tab2:setName("tab2");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.tab2);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(5);
    obj.image1:setTop(5);
    obj.image1:setWidth(620);
    obj.image1:setHeight(920);
    obj.image1:setSRC("/imagens/1.png");
    obj.image1:setName("image1");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.scrollBox1);
    obj.edit11:setLeft(160);
    obj.edit11:setTop(60);
    obj.edit11:setWidth(75);
    obj.edit11:setHeight(20);
    obj.edit11:setField("Nome");
    obj.edit11:setName("edit11");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.scrollBox1);
    obj.edit12:setLeft(160);
    obj.edit12:setTop(92);
    obj.edit12:setWidth(75);
    obj.edit12:setHeight(20);
    obj.edit12:setField("idade");
    obj.edit12:setName("edit12");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.scrollBox1);
    obj.comboBox1:setLeft(305);
    obj.comboBox1:setTop(60);
    obj.comboBox1:setWidth(135);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("Classe");
    obj.comboBox1:setItems({'Escolha', 'Animago', 'Arqueiro', 'Bardo', 'Bispo', 'Caçador de Almas', 'Guerreiro', 
		'Ladino', 'Mago', 'Mercenario', 'Monge', 'Paladino','Cavaleiro Draconico' });
    obj.comboBox1:setName("comboBox1");

    obj.cmbEspecializa = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.cmbEspecializa:setParent(obj.scrollBox1);
    obj.cmbEspecializa:setName("cmbEspecializa");
    obj.cmbEspecializa:setLeft(305);
    obj.cmbEspecializa:setTop(92);
    obj.cmbEspecializa:setWidth(135);
    obj.cmbEspecializa:setHeight(20);
    obj.cmbEspecializa:setField("Espec");
    obj.cmbEspecializa:setEnabled(false);
    obj.cmbEspecializa:setItems({'Escolha', 'Druida', 'Shaman', 'Caçador', 'Sentinela Lunar', 'Encantador de Almas', 
		'Necromance', 'Sacerdote', 'Juiz', 'Barbaro', 'Tanker', 'Acrobata', 'Assassino', 'Arcanista', 'Feiticeiro', 'Summoner', 'Duelista', 'Pirata', 'Guardião Espiritual', 
		'Cavaleiro das Trevas', 'Templario' });

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.scrollBox1);
    obj.edit13:setLeft(490);
    obj.edit13:setTop(60);
    obj.edit13:setWidth(40);
    obj.edit13:setHeight(20);
    obj.edit13:setField("Velis");
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.scrollBox1);
    obj.edit14:setLeft(490);
    obj.edit14:setTop(60);
    obj.edit14:setWidth(40);
    obj.edit14:setVisible(false);
    obj.edit14:setHeight(20);
    obj.edit14:setField("PHPRacial");
    obj.edit14:setName("edit14");

    obj.comboBox2 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.scrollBox1);
    obj.comboBox2:setLeft(490);
    obj.comboBox2:setTop(92);
    obj.comboBox2:setWidth(75);
    obj.comboBox2:setField("Raca");
    obj.comboBox2:setItems({'Escolha', 'Humano', 'Elfo', 'Elfo Negro', 'Anão', 'Orc', 'Kamael', 'Thiefling' });
    obj.comboBox2:setName("comboBox2");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.scrollBox1);
    obj.button1:setLeft(175);
    obj.button1:setTop(288);
    obj.button1:setWidth(30);
    obj.button1:setFontSize(18);
    obj.button1:setText("-");
    obj.button1:setName("button1");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.scrollBox1);
    obj.button2:setLeft(208);
    obj.button2:setTop(288);
    obj.button2:setWidth(30);
    obj.button2:setFontSize(18);
    obj.button2:setText("+");
    obj.button2:setName("button2");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.scrollBox1);
    obj.edit15:setLeft(170);
    obj.edit15:setTop(265);
    obj.edit15:setWidth(35);
    obj.edit15:setHeight(20);
    obj.edit15:setEnabled(false);
    obj.edit15:setType("number");
    obj.edit15:setField("Forca");
    obj.edit15:setName("edit15");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(208);
    obj.rectangle1:setTop(265);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setWidth(35);
    obj.rectangle1:setHeight(20);
    obj.rectangle1:setName("rectangle1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.scrollBox1);
    obj.label1:setLeft(210);
    obj.label1:setTop(265);
    obj.label1:setWidth(35);
    obj.label1:setHeight(20);
    lfm_setPropAsString(obj.label1, "format",  "%d");
    obj.label1:setField("ForcaTotal");
    obj.label1:setName("label1");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.scrollBox1);
    obj.button3:setLeft(175);
    obj.button3:setTop(350);
    obj.button3:setWidth(30);
    obj.button3:setFontSize(18);
    obj.button3:setText("-");
    obj.button3:setName("button3");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.scrollBox1);
    obj.button4:setLeft(208);
    obj.button4:setTop(350);
    obj.button4:setWidth(30);
    obj.button4:setFontSize(18);
    obj.button4:setText("+");
    obj.button4:setName("button4");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.scrollBox1);
    obj.edit16:setLeft(170);
    obj.edit16:setTop(327);
    obj.edit16:setWidth(35);
    obj.edit16:setHeight(20);
    obj.edit16:setEnabled(false);
    obj.edit16:setType("number");
    obj.edit16:setField("Inteligencia");
    obj.edit16:setName("edit16");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox1);
    obj.rectangle2:setLeft(208);
    obj.rectangle2:setTop(327);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setWidth(35);
    obj.rectangle2:setHeight(20);
    obj.rectangle2:setName("rectangle2");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.scrollBox1);
    obj.label2:setLeft(210);
    obj.label2:setTop(327);
    obj.label2:setWidth(35);
    obj.label2:setHeight(20);
    lfm_setPropAsString(obj.label2, "format",  "%d");
    obj.label2:setField("InteligenciaTotal");
    obj.label2:setName("label2");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.scrollBox1);
    obj.button5:setLeft(175);
    obj.button5:setTop(411);
    obj.button5:setWidth(30);
    obj.button5:setFontSize(18);
    obj.button5:setText("-");
    obj.button5:setName("button5");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.scrollBox1);
    obj.button6:setLeft(208);
    obj.button6:setTop(411);
    obj.button6:setWidth(30);
    obj.button6:setFontSize(18);
    obj.button6:setText("+");
    obj.button6:setName("button6");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.scrollBox1);
    obj.edit17:setLeft(170);
    obj.edit17:setTop(388);
    obj.edit17:setWidth(35);
    obj.edit17:setHeight(20);
    obj.edit17:setEnabled(false);
    obj.edit17:setType("number");
    obj.edit17:setField("Destreza");
    obj.edit17:setName("edit17");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.scrollBox1);
    obj.rectangle3:setLeft(208);
    obj.rectangle3:setTop(388);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setWidth(35);
    obj.rectangle3:setHeight(20);
    obj.rectangle3:setName("rectangle3");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.scrollBox1);
    obj.label3:setLeft(210);
    obj.label3:setTop(388);
    obj.label3:setWidth(35);
    obj.label3:setHeight(20);
    lfm_setPropAsString(obj.label3, "format",  "%d");
    obj.label3:setField("DestrezaTotal");
    obj.label3:setName("label3");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.scrollBox1);
    obj.button7:setLeft(175);
    obj.button7:setTop(472);
    obj.button7:setWidth(30);
    obj.button7:setFontSize(18);
    obj.button7:setText("-");
    obj.button7:setName("button7");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.scrollBox1);
    obj.button8:setLeft(208);
    obj.button8:setTop(472);
    obj.button8:setWidth(30);
    obj.button8:setFontSize(18);
    obj.button8:setText("+");
    obj.button8:setName("button8");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.scrollBox1);
    obj.edit18:setLeft(170);
    obj.edit18:setTop(449);
    obj.edit18:setWidth(35);
    obj.edit18:setHeight(20);
    obj.edit18:setEnabled(false);
    obj.edit18:setType("number");
    obj.edit18:setField("Agilidade");
    obj.edit18:setName("edit18");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.scrollBox1);
    obj.rectangle4:setLeft(208);
    obj.rectangle4:setTop(449);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setWidth(35);
    obj.rectangle4:setHeight(20);
    obj.rectangle4:setName("rectangle4");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.scrollBox1);
    obj.label4:setLeft(210);
    obj.label4:setTop(449);
    obj.label4:setWidth(35);
    obj.label4:setHeight(20);
    lfm_setPropAsString(obj.label4, "format",  "%d");
    obj.label4:setField("AgilidadeTotal");
    obj.label4:setName("label4");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.scrollBox1);
    obj.button9:setLeft(175);
    obj.button9:setTop(533);
    obj.button9:setWidth(30);
    obj.button9:setFontSize(18);
    obj.button9:setText("-");
    obj.button9:setName("button9");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.scrollBox1);
    obj.button10:setLeft(208);
    obj.button10:setTop(533);
    obj.button10:setWidth(30);
    obj.button10:setFontSize(18);
    obj.button10:setText("+");
    obj.button10:setName("button10");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.scrollBox1);
    obj.edit19:setLeft(170);
    obj.edit19:setTop(510);
    obj.edit19:setWidth(35);
    obj.edit19:setHeight(20);
    obj.edit19:setEnabled(false);
    obj.edit19:setType("number");
    obj.edit19:setField("Vitalidade");
    obj.edit19:setName("edit19");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.scrollBox1);
    obj.rectangle5:setLeft(208);
    obj.rectangle5:setTop(510);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setWidth(35);
    obj.rectangle5:setHeight(20);
    obj.rectangle5:setName("rectangle5");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.scrollBox1);
    obj.label5:setLeft(210);
    obj.label5:setTop(510);
    obj.label5:setWidth(35);
    obj.label5:setHeight(20);
    lfm_setPropAsString(obj.label5, "format",  "%d");
    obj.label5:setField("VitalidadeTotal");
    obj.label5:setName("label5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.scrollBox1);
    obj.rectangle6:setLeft(480);
    obj.rectangle6:setTop(265);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setWidth(100);
    obj.rectangle6:setHeight(20);
    obj.rectangle6:setName("rectangle6");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.scrollBox1);
    obj.label6:setLeft(482);
    obj.label6:setTop(265);
    obj.label6:setWidth(100);
    obj.label6:setHeight(20);
    lfm_setPropAsString(obj.label6, "format",  "%d");
    obj.label6:setField("PA");
    obj.label6:setName("label6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.scrollBox1);
    obj.rectangle7:setLeft(480);
    obj.rectangle7:setTop(327);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setWidth(100);
    obj.rectangle7:setHeight(20);
    obj.rectangle7:setName("rectangle7");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.scrollBox1);
    obj.label7:setLeft(482);
    obj.label7:setTop(327);
    obj.label7:setWidth(100);
    obj.label7:setHeight(20);
    lfm_setPropAsString(obj.label7, "format",  "%d");
    obj.label7:setField("PM");
    obj.label7:setName("label7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.scrollBox1);
    obj.rectangle8:setLeft(480);
    obj.rectangle8:setTop(388);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setWidth(100);
    obj.rectangle8:setHeight(20);
    obj.rectangle8:setName("rectangle8");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.scrollBox1);
    obj.label8:setLeft(482);
    obj.label8:setTop(388);
    obj.label8:setWidth(100);
    obj.label8:setHeight(20);
    lfm_setPropAsString(obj.label8, "format",  "%d");
    obj.label8:setField("PF");
    obj.label8:setName("label8");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.scrollBox1);
    obj.rectangle9:setLeft(480);
    obj.rectangle9:setTop(449);
    obj.rectangle9:setColor("black ");
    obj.rectangle9:setWidth(30);
    obj.rectangle9:setHeight(20);
    obj.rectangle9:setName("rectangle9");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.scrollBox1);
    obj.label9:setLeft(482);
    obj.label9:setTop(449);
    obj.label9:setWidth(40);
    obj.label9:setHeight(20);
    lfm_setPropAsString(obj.label9, "format",  "%d");
    obj.label9:setField("Defesa");
    obj.label9:setName("label9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.scrollBox1);
    obj.rectangle10:setLeft(480);
    obj.rectangle10:setTop(510);
    obj.rectangle10:setColor("black ");
    obj.rectangle10:setWidth(30);
    obj.rectangle10:setHeight(20);
    obj.rectangle10:setName("rectangle10");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.scrollBox1);
    obj.label10:setLeft(482);
    obj.label10:setTop(510);
    obj.label10:setWidth(40);
    obj.label10:setHeight(20);
    lfm_setPropAsString(obj.label10, "format",  "%d");
    obj.label10:setField("Resistencia");
    obj.label10:setName("label10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.scrollBox1);
    obj.rectangle11:setLeft(545);
    obj.rectangle11:setTop(449);
    obj.rectangle11:setColor("Navy ");
    obj.rectangle11:setWidth(30);
    obj.rectangle11:setHeight(20);
    obj.rectangle11:setName("rectangle11");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.scrollBox1);
    obj.label11:setLeft(547);
    obj.label11:setTop(449);
    obj.label11:setWidth(40);
    obj.label11:setHeight(20);
    obj.label11:setField("DEFRED");
    obj.label11:setName("label11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.scrollBox1);
    obj.rectangle12:setLeft(545);
    obj.rectangle12:setTop(510);
    obj.rectangle12:setColor("Navy ");
    obj.rectangle12:setWidth(30);
    obj.rectangle12:setHeight(20);
    obj.rectangle12:setName("rectangle12");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.scrollBox1);
    obj.label12:setLeft(547);
    obj.label12:setTop(510);
    obj.label12:setWidth(40);
    obj.label12:setHeight(20);
    obj.label12:setField("RESRED");
    obj.label12:setName("label12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.scrollBox1);
    obj.label13:setLeft(490);
    obj.label13:setTop(470);
    obj.label13:setWidth(70);
    obj.label13:setHeight(20);
    obj.label13:setScale(1.5);
    obj.label13:setFontColor("Navy  ");
    obj.label13:setText("Redução");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.scrollBox1);
    obj.label14:setLeft(490);
    obj.label14:setTop(530);
    obj.label14:setWidth(70);
    obj.label14:setHeight(20);
    obj.label14:setScale(1.5);
    obj.label14:setFontColor("Navy  ");
    obj.label14:setText("Redução");
    obj.label14:setName("label14");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.scrollBox1);
    obj.rectangle13:setLeft(148);
    obj.rectangle13:setTop(603);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setWidth(100);
    obj.rectangle13:setHeight(30);
    obj.rectangle13:setName("rectangle13");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.scrollBox1);
    obj.label15:setLeft(150);
    obj.label15:setFontSize(20);
    obj.label15:setTop(603);
    obj.label15:setWidth(100);
    obj.label15:setFontColor("red");
    obj.label15:setHeight(30);
    lfm_setPropAsString(obj.label15, "format",  "%d");
    obj.label15:setField("HPTotal");
    obj.label15:setName("label15");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.scrollBox1);
    obj.rectangle14:setLeft(148);
    obj.rectangle14:setTop(640);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setWidth(100);
    obj.rectangle14:setHeight(30);
    obj.rectangle14:setName("rectangle14");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.scrollBox1);
    obj.label16:setLeft(150);
    obj.label16:setFontSize(20);
    obj.label16:setTop(640);
    obj.label16:setWidth(100);
    obj.label16:setFontColor("blue");
    obj.label16:setHeight(30);
    lfm_setPropAsString(obj.label16, "format",  "%d");
    obj.label16:setField("MPTotal");
    obj.label16:setName("label16");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.scrollBox1);
    obj.rectangle15:setLeft(168);
    obj.rectangle15:setTop(702);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setWidth(75);
    obj.rectangle15:setHeight(20);
    obj.rectangle15:setName("rectangle15");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.scrollBox1);
    obj.label17:setLeft(170);
    obj.label17:setTop(702);
    obj.label17:setWidth(75);
    obj.label17:setHeight(20);
    obj.label17:setField("Esquiva");
    obj.label17:setName("label17");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.scrollBox1);
    obj.rectangle16:setLeft(168);
    obj.rectangle16:setTop(732);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setWidth(75);
    obj.rectangle16:setHeight(20);
    obj.rectangle16:setName("rectangle16");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.scrollBox1);
    obj.label18:setLeft(170);
    obj.label18:setTop(732);
    obj.label18:setWidth(75);
    obj.label18:setHeight(20);
    lfm_setPropAsString(obj.label18, "format",  "%d");
    obj.label18:setField("Persistencia");
    obj.label18:setName("label18");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.scrollBox1);
    obj.rectangle17:setLeft(498);
    obj.rectangle17:setTop(610);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setWidth(75);
    obj.rectangle17:setHeight(20);
    obj.rectangle17:setName("rectangle17");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.scrollBox1);
    obj.label19:setLeft(500);
    obj.label19:setTop(610);
    obj.label19:setWidth(75);
    obj.label19:setHeight(20);
    obj.label19:setField("Acerto");
    obj.label19:setName("label19");

    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.scrollBox1);
    obj.rectangle18:setLeft(498);
    obj.rectangle18:setTop(640);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setWidth(75);
    obj.rectangle18:setHeight(20);
    obj.rectangle18:setName("rectangle18");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.scrollBox1);
    obj.label20:setLeft(500);
    obj.label20:setTop(640);
    obj.label20:setWidth(75);
    obj.label20:setHeight(20);
    obj.label20:setField("AcertoMagico");
    obj.label20:setName("label20");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.scrollBox1);
    obj.rectangle19:setLeft(498);
    obj.rectangle19:setTop(702);
    obj.rectangle19:setColor("black");
    obj.rectangle19:setWidth(75);
    obj.rectangle19:setHeight(20);
    obj.rectangle19:setName("rectangle19");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.scrollBox1);
    obj.label21:setLeft(500);
    obj.label21:setTop(702);
    obj.label21:setWidth(75);
    obj.label21:setHeight(20);
    obj.label21:setField("Critical");
    obj.label21:setName("label21");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.scrollBox1);
    obj.rectangle20:setLeft(498);
    obj.rectangle20:setTop(732);
    obj.rectangle20:setColor("black");
    obj.rectangle20:setWidth(75);
    obj.rectangle20:setHeight(20);
    obj.rectangle20:setName("rectangle20");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.scrollBox1);
    obj.label22:setLeft(500);
    obj.label22:setTop(732);
    obj.label22:setWidth(75);
    obj.label22:setHeight(20);
    obj.label22:setField("CMagico");
    obj.label22:setName("label22");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.scrollBox1);
    obj.edit20:setLeft(295);
    obj.edit20:setTop(807);
    obj.edit20:setFontColor("#00008B");
    obj.edit20:setScale(2.0);
    obj.edit20:setWidth(21);
    obj.edit20:setHeight(50);
    obj.edit20:setType("number");
    obj.edit20:setTextPrompt("0");
    obj.edit20:setEnabled(true);
    obj.edit20:setMax(30);
    obj.edit20:setField("Level");
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.scrollBox1);
    obj.edit21:setLeft(295);
    obj.edit21:setTop(700);
    obj.edit21:setFontColor("#00008B");
    obj.edit21:setScale(2.0);
    obj.edit21:setWidth(21);
    obj.edit21:setVisible(false);
    obj.edit21:setHeight(50);
    obj.edit21:setField("Elevel");
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.scrollBox1);
    obj.button11:setLeft(33);
    obj.button11:setTop(160);
    obj.button11:setWidth(60);
    obj.button11:setHeight(60);
    obj.button11:setOpacity(0.1);
    obj.button11:setName("button11");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.scrollBox1);
    obj.button12:setLeft(120);
    obj.button12:setTop(160);
    obj.button12:setWidth(60);
    obj.button12:setHeight(60);
    obj.button12:setOpacity(0.1);
    obj.button12:setName("button12");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.scrollBox1);
    obj.button13:setLeft(460);
    obj.button13:setTop(160);
    obj.button13:setWidth(60);
    obj.button13:setHeight(60);
    obj.button13:setOpacity(0.1);
    obj.button13:setName("button13");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.scrollBox1);
    obj.button14:setLeft(287);
    obj.button14:setTop(290);
    obj.button14:setWidth(60);
    obj.button14:setHeight(60);
    obj.button14:setOpacity(0.1);
    obj.button14:setName("button14");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.scrollBox1);
    obj.button15:setLeft(542);
    obj.button15:setTop(160);
    obj.button15:setWidth(60);
    obj.button15:setHeight(60);
    obj.button15:setOpacity(0.1);
    obj.button15:setName("button15");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setFields({'Raca', 'Level'});
    obj.dataLink1:setName("dataLink1");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.scrollBox1);
    obj.dataLink2:setFields({'Forca', 'Inteligencia', 'Destreza', 'Agilidade', 'Vitalidade', 'FNivel', 'FNivel', 'INivel', 'DNivel', 'ANivel', 'VNivel', 'DForca', 'DInteligencia', 'DDestreza', 'DAgilidade', 'DVitalidade'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox1);
    obj.dataLink3:setFields({'ForcaTotal', 'InteligenciaTotal', 'DestrezaTotal', 'AgilidadeTotal', 'VitalidadeTotal', 'FNivel', 'FNivel', 'INivel', 'DNivel', 'ANivel', 'VNivel', 'DForca', 'DInteligencia', 'DDestreza',
						'DAgilidade', 'DVitalidade', 'ArmaPA', 'ArmaDEF', 'ArmaPM', 'ArmaRES', 'ArmaPF', 'ArmaduraPA', 'ArmaduraPF', 'ArmaduraPM', 'ArmaduraRES', 'ArmaduraDEF', 'OutraPA', 'OutraPF', 'OutraPM', 'OutraRES', 'OutraDEF',
						'AcessorioPA', 'AcessorioPF', 'AcessorioPM', 'AcessorioRES', 'AcessorioDEF', 'PABasica', 'PMBasica', 'PFBasica', 'RESBasica', 'DEFBasica', 'PARacial', 'PMRacial', 'PFRacial', 'DEFRacial', 'RESRacial',});
    obj.dataLink3:setName("dataLink3");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.scrollBox1);
    obj.dataLink4:setFields({'ForcaTotal', 'InteligenciaTotal', 'DestrezaTotal', 'AgilidadeTotal', 'VitalidadeTotal', 'FNivel', 'FNivel', 'INivel', 'DNivel', 'ANivel', 'VNivel', 'DForca', 'DInteligencia', 'DDestreza',
						'DAgilidade', 'DVitalidade', 'ArmaPA', 'ArmaDEF', 'ArmaPM', 'ArmaRES', 'ArmaPF', 'ArmaduraPA', 'ArmaduraPF', 'ArmaduraPM', 'ArmaduraRES', 'ArmaduraDEF', 'OutraPA', 'OutraPF', 'OutraPM', 'OutraRES', 'OutraDEF',
						'AcessorioPA', 'AcessorioPF', 'AcessorioPM', 'AcessorioRES', 'AcessorioDEF', 'PABasica', 'PMBasica', 'PFBasica', 'RESBasica', 'DEFBasica', 'PARacial', 'PMRacial', 'PFRacial', 'DEFRacial', 'RESRacial',});
    obj.dataLink4:setName("dataLink4");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.scrollBox1);
    obj.dataLink5:setFields({'Defesa', 'Resistencia', 'Vitalidade', 'Agilidade', 'VitalidadeTotal', 'AgilidadeTotal', 'ArmaduraDEF', 'ArmaDEF', 'OutraDEF', 'AcessorioDEF', 'DEFBasica', 'level'});
    obj.dataLink5:setName("dataLink5");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.scrollBox1);
    obj.button16:setLeft(388);
    obj.button16:setTop(255);
    obj.button16:setWidth(60);
    obj.button16:setHeight(55);
    obj.button16:setOpacity(0.1);
    obj.button16:setName("button16");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.scrollBox1);
    obj.button17:setLeft(388);
    obj.button17:setTop(317);
    obj.button17:setWidth(60);
    obj.button17:setHeight(55);
    obj.button17:setOpacity(0.1);
    obj.button17:setName("button17");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.scrollBox1);
    obj.button18:setLeft(388);
    obj.button18:setTop(377);
    obj.button18:setWidth(60);
    obj.button18:setHeight(55);
    obj.button18:setOpacity(0.1);
    obj.button18:setName("button18");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.scrollBox1);
    obj.button19:setLeft(388);
    obj.button19:setTop(435);
    obj.button19:setWidth(60);
    obj.button19:setHeight(55);
    obj.button19:setOpacity(0.1);
    obj.button19:setName("button19");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.scrollBox1);
    obj.button20:setLeft(388);
    obj.button20:setTop(493);
    obj.button20:setWidth(60);
    obj.button20:setHeight(55);
    obj.button20:setOpacity(0.1);
    obj.button20:setName("button20");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.scrollBox1);
    obj.dataLink6:setFields({'Vitalidade', 'VitalidadeTotal', 'Level', 'ArmaHP', 'OutraHP', 'ArmaduraHP', 'AcessorioHP', 'PHPBasica', 'PHPRacial', 'Raca'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.scrollBox1);
    obj.dataLink7:setFields({'Inteligencia', 'InteligenciaTotal', 'Level', 'ArmaMP', 'OutraMP', 'ArmaduraMP', 'AcessorioMP', 'PMPBasica', 'PMPRacial', 'DMP', 'MPMont', 'Classe', 'Espec'});
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.scrollBox1);
    obj.dataLink8:setFields({'Vitalidade', 'VitalidadeTotal', 'Level', 'ArmaHP', 'OutraHP', 'ArmaduraHP', 'AcessorioHP', 'PHPBasica', 'PHPRacial', 'Raca', 'Classe', 'Espec', 'Raca'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.scrollBox1);
    obj.dataLink9:setFields({'ClasseCR', 'DestrezaTotal', 'AgilidadeTotal', 'ClasseAM', 'AcertoBasica', 'AcertoRacial', 'ESQBasica', 'EspecAM', 'EspecCR', 'ClasseCM', 'EspecCM', 'ClasseEsquiva', 'EspecEsquiva',
						'ClassePer', 'EspecPer', 'ESQRacial', 'CritBasica', 'CritRacial', 'AMRacial', 'AMBasica', 'CMBasica', 'CMRacial', 'PersistBasica', 'PersistRacial', 'VitalidadeTotal', 
						'ForcaTotal', 'Level', 'ClasseAcerto', 'EspecAcerto', 'Classe', 'Espec', 'Raca'});
    obj.dataLink9:setName("dataLink9");


			local function AtaqueBasico()      
				-- obter a mesa do personagem
				local mesaDoPersonagem = Firecast.getMesaDe(sheet);        

				-- se o usuário não preencheu modificador, vamos usar o valor 0
				sheet.Acerto = sheet.Acerto or 0;                        
				if sheet.EscolheAtaqueBasico == nil then
					showMessage("Escolha uma Base de Dano para seu Ataque Basico na lista acima");
				else				
					mesaDoPersonagem.chat:rolarDados("1d20 + " .. sheet.Acerto, "[§K2]Ataque Basico",						
						function (rolado)						
						local soDado = rolado.resultado + 1 - sheet.Acerto;
							if soDado > sheet.Critical then
								if sheet.EscolheAtaqueBasico == 'PA' then
									mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICO CORPO A CORPO CARAI  :awyeah: « " .. sheet.PA * 2 .. " »");
								elseif sheet.EscolheAtaqueBasico == 'PF' then
									mesaDoPersonagem.chat:enviarMensagem("[§K4,0]CRITICO A DISTANCIA CARAI :awyeah: « " .. sheet.PF * 2 .. " »");								
								end;	
							else
								if sheet.EscolheAtaqueBasico == 'PA' then
									mesaDoPersonagem.chat:enviarMensagem("[§K9,0]Causando como Dano Fisico corpo a corpo « [§K4,0] " .. sheet.PA .. " [§K9,0]»");
								elseif sheet.EscolheAtaqueBasico == 'PF' then			
									mesaDoPersonagem.chat:enviarMensagem("[§K9,0]Causando como Dano Fisico a distancia « [§K4,0] " .. sheet.PF .. " [§K9,0]»");
								end;							
							end;							
					end); 
				end;
			end; 		   
        


    obj.comboBox3 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.scrollBox1);
    obj.comboBox3:setLeft(273);
    obj.comboBox3:setTop(355);
    obj.comboBox3:setWidth(90);
    obj.comboBox3:setHorzTextAlign("center");
    obj.comboBox3:setField("EscolheAtaqueBasico");
    obj.comboBox3:setFontColor("#00FFFF");
    obj.comboBox3:setItems({'PA', 'PF'});
    obj.comboBox3:setName("comboBox3");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.scrollBox1);
    obj.button21:setLeft(273);
    obj.button21:setTop(380);
    obj.button21:setWidth(90);
    obj.button21:setHeight(30);
    obj.button21:setFontSize(12);
    obj.button21:setFontColor("#00FFFF");
    obj.button21:setText("Ataque Basico");
    obj.button21:setName("button21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.scrollBox1);
    obj.edit22:setLeft(270);
    obj.edit22:setTop(670);
    obj.edit22:setWidth(90);
    obj.edit22:setType("number");
    obj.edit22:setHeight(30);
    obj.edit22:setVisible(false);
    obj.edit22:setField("ClasseAcerto");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.scrollBox1);
    obj.edit23:setLeft(270);
    obj.edit23:setTop(720);
    obj.edit23:setWidth(90);
    obj.edit23:setType("number");
    obj.edit23:setHeight(30);
    obj.edit23:setVisible(false);
    obj.edit23:setField("DestrezaAcerto");
    obj.edit23:setName("edit23");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.scrollBox1);
    obj.edit24:setLeft(270);
    obj.edit24:setTop(770);
    obj.edit24:setWidth(90);
    obj.edit24:setType("number");
    obj.edit24:setHeight(30);
    obj.edit24:setVisible(false);
    obj.edit24:setField("EspecAcerto");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.scrollBox1);
    obj.edit25:setLeft(270);
    obj.edit25:setTop(670);
    obj.edit25:setWidth(90);
    obj.edit25:setType("number");
    obj.edit25:setHeight(30);
    obj.edit25:setVisible(false);
    obj.edit25:setField("ClasseAM");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.scrollBox1);
    obj.edit26:setLeft(270);
    obj.edit26:setTop(770);
    obj.edit26:setWidth(90);
    obj.edit26:setType("number");
    obj.edit26:setHeight(30);
    obj.edit26:setVisible(false);
    obj.edit26:setField("EspecAM");
    obj.edit26:setName("edit26");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.scrollBox1);
    obj.edit27:setLeft(270);
    obj.edit27:setTop(670);
    obj.edit27:setWidth(90);
    obj.edit27:setType("number");
    obj.edit27:setHeight(30);
    obj.edit27:setVisible(false);
    obj.edit27:setField("ClasseCR");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.scrollBox1);
    obj.edit28:setLeft(270);
    obj.edit28:setTop(770);
    obj.edit28:setWidth(90);
    obj.edit28:setType("number");
    obj.edit28:setHeight(30);
    obj.edit28:setVisible(false);
    obj.edit28:setField("EspecCR");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.scrollBox1);
    obj.edit29:setLeft(270);
    obj.edit29:setTop(670);
    obj.edit29:setWidth(90);
    obj.edit29:setType("number");
    obj.edit29:setHeight(30);
    obj.edit29:setVisible(false);
    obj.edit29:setField("ClasseCM");
    obj.edit29:setName("edit29");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.scrollBox1);
    obj.edit30:setLeft(270);
    obj.edit30:setTop(770);
    obj.edit30:setWidth(90);
    obj.edit30:setType("number");
    obj.edit30:setHeight(30);
    obj.edit30:setVisible(false);
    obj.edit30:setField("EspecCM");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.scrollBox1);
    obj.edit31:setLeft(270);
    obj.edit31:setTop(670);
    obj.edit31:setWidth(90);
    obj.edit31:setType("number");
    obj.edit31:setHeight(30);
    obj.edit31:setVisible(false);
    obj.edit31:setField("ClasseEsquiva");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.scrollBox1);
    obj.edit32:setLeft(270);
    obj.edit32:setTop(770);
    obj.edit32:setWidth(90);
    obj.edit32:setType("number");
    obj.edit32:setHeight(30);
    obj.edit32:setVisible(false);
    obj.edit32:setField("EspecEsquiva");
    obj.edit32:setName("edit32");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.scrollBox1);
    obj.edit33:setLeft(270);
    obj.edit33:setTop(670);
    obj.edit33:setWidth(90);
    obj.edit33:setType("number");
    obj.edit33:setHeight(30);
    obj.edit33:setVisible(false);
    obj.edit33:setField("ClassePer");
    obj.edit33:setName("edit33");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.scrollBox1);
    obj.edit34:setLeft(270);
    obj.edit34:setTop(770);
    obj.edit34:setWidth(90);
    obj.edit34:setType("number");
    obj.edit34:setHeight(30);
    obj.edit34:setVisible(false);
    obj.edit34:setField("EspecPer");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.scrollBox1);
    obj.edit35:setLeft(270);
    obj.edit35:setTop(770);
    obj.edit35:setWidth(90);
    obj.edit35:setType("number");
    obj.edit35:setHeight(30);
    obj.edit35:setVisible(false);
    obj.edit35:setField("AgilidadeESQ");
    obj.edit35:setName("edit35");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.scrollBox1);
    obj.edit36:setLeft(270);
    obj.edit36:setTop(770);
    obj.edit36:setWidth(90);
    obj.edit36:setType("number");
    obj.edit36:setHeight(30);
    obj.edit36:setVisible(false);
    obj.edit36:setField("ForcaPer");
    obj.edit36:setName("edit36");

    obj.edit37 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.scrollBox1);
    obj.edit37:setTop(440);
    obj.edit37:setLeft(292);
    obj.edit37:setWidth(50);
    obj.edit37:setHeight(30);
    obj.edit37:setMax(160);
    obj.edit37:setMin(0);
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setType("number");
    obj.edit37:setText("120");
    obj.edit37:setTransparent(true);
    obj.edit37:setFontColor("Black");
    obj.edit37:setFontSize(22);
    obj.edit37:setEnabled(false);
    obj.edit37:setField("ControladorAtributos");
    obj.edit37:setName("edit37");

    obj.edit38 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.scrollBox1);
    obj.edit38:setTop(530);
    obj.edit38:setLeft(292);
    obj.edit38:setWidth(50);
    obj.edit38:setHeight(30);
    obj.edit38:setMax(160);
    obj.edit38:setMin(0);
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setType("number");
    obj.edit38:setText("120");
    obj.edit38:setVisible(false);
    obj.edit38:setFontSize(22);
    obj.edit38:setEnabled(true);
    obj.edit38:setField("LiberarRolagemUp");
    obj.edit38:setName("edit38");

    obj.edit39 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.scrollBox1);
    obj.edit39:setTop(530);
    obj.edit39:setLeft(292);
    obj.edit39:setWidth(50);
    obj.edit39:setHeight(30);
    obj.edit39:setMax(20);
    obj.edit39:setMin(0);
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setType("number");
    obj.edit39:setVisible(false);
    obj.edit39:setFontSize(22);
    obj.edit39:setEnabled(true);
    obj.edit39:setField("CLevel");
    obj.edit39:setName("edit39");


			function DiminuirPontosForca()
                if tonumber(sheet.Forca) > 0 then
					sheet.Forca = tonumber(sheet.Forca) - 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + 1;
                else
					showMessage("Atributo Força não tem valor suficiente para ser subtraido");
                end;
			end;
			
			function AumentarPontosForca()
                if tonumber(sheet.ControladorAtributos) > 0 then
					sheet.Forca = tonumber(sheet.Forca) + 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) - 1;
                else
					showMessage("Voce não possui pontos de atributo para destribuir, vai caçar XP");
                end;
			end;
			
			function DiminuirPontosInteligencia()
                if tonumber(sheet.Inteligencia) > 0 then
					sheet.Inteligencia = tonumber(sheet.Inteligencia) - 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + 1;
                else
					showMessage("Atributo Inteligencia não tem valor suficiente para ser subtraido");
                end;
			end;
			
			function AumentarPontosInteligencia()
                if tonumber(sheet.ControladorAtributos) > 0 then
					sheet.Inteligencia = tonumber(sheet.Inteligencia) + 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) - 1;
                else
					showMessage("Voce não possui pontos de atributo para destribuir, vai caçar XP");
                end;
			end;
			
			function DiminuirPontosDestreza()
                if tonumber(sheet.Destreza) > 0 then
					sheet.Destreza = tonumber(sheet.Destreza) - 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + 1;
                else
					showMessage("Atributo Destreza não tem valor suficiente para ser subtraido");
                end;
			end;
			
			function AumentarPontosDestreza()
                if tonumber(sheet.ControladorAtributos) > 0 then
					sheet.Destreza = tonumber(sheet.Destreza) + 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) - 1;
                else
					showMessage("Voce não possui pontos de atributo para destribuir, vai caçar XP");
                end;
			end;
			
			function DiminuirPontosAgilidade()
                if tonumber(sheet.Agilidade) > 0 then
					sheet.Agilidade = tonumber(sheet.Agilidade) - 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + 1;
                else
					showMessage("Atributo Agilidade não tem valor suficiente para ser subtraido");
                end;
			end;
			
			function AumentarPontosAgilidade()
                if tonumber(sheet.ControladorAtributos) > 0 then
					sheet.Agilidade = tonumber(sheet.Agilidade) + 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) - 1;
                else
					showMessage("Voce não possui pontos de atributo para destribuir, vai caçar XP");
                end;
			end;
			
			function DiminuirPontosVitalidade()
                if tonumber(sheet.Vitalidade) > 0 then
					sheet.Vitalidade = tonumber(sheet.Vitalidade) - 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + 1;
                else
					showMessage("Atributo Vitalidade não tem valor suficiente para ser subtraido");
                end;
			end;
			
			function AumentarPontosVitalidade()
                if tonumber(sheet.ControladorAtributos) > 0 then
					sheet.Vitalidade = tonumber(sheet.Vitalidade) + 1;
					sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) - 1;
                else
					showMessage("Voce não possui pontos de atributo para destribuir, vai caçar XP");
                end;
			end;			
		


    obj.btnUpaLevel = GUI.fromHandle(_obj_newObject("button"));
    obj.btnUpaLevel:setParent(obj.scrollBox1);
    obj.btnUpaLevel:setName("btnUpaLevel");
    obj.btnUpaLevel:setLeft(273);
    obj.btnUpaLevel:setTop(480);
    obj.btnUpaLevel:setWidth(90);
    obj.btnUpaLevel:setHeight(25);
    obj.btnUpaLevel:setFontColor("#FFD700");
    obj.btnUpaLevel:setFontSize(15);
    obj.btnUpaLevel:setText("Level UP");


				local function RolarAtributoPorUpar()            
					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
					sheet.modificador = sheet.modificador or 0;                        
					if sheet.LiberarRolagemUp > 0 then
						sheet.LiberarRolagemUp = tonumber(sheet.LiberarRolagemUp) - 1;
						mesaDoPersonagem.chat:rolarDados("1d4", "[§K8]« Rolagem de Atributo por Level UP »",
							function (rolado)
								if rolado.resultado > 0 then
									sheet.PPN = tonumber(rolado.resultado);  
								else
									showMessage("Aconteceu alguma coisa errada ai meu bom");
								end;                                        
								sheet.ControladorAtributos = tonumber(sheet.ControladorAtributos) + tonumber(rolado.resultado)
						end);
					else
						showMessage("Voce ja rolou todos seus dados de Level UP");
					end;
				if sheet.LiberarRolagemUp > 0 then
					self.btnUpaLevel.visible = true;
				else
					self.btnUpaLevel.visible = false
				end;					
				end;               
			


    obj.BarraXP = GUI.fromHandle(_obj_newObject("progressBar"));
    obj.BarraXP:setParent(obj.scrollBox1);
    obj.BarraXP:setName("BarraXP");
    obj.BarraXP:setWidth(100);
    obj.BarraXP:setHeight(20);
    obj.BarraXP:setColor("purple");
    obj.BarraXP:setTop(675);
    obj.BarraXP:setLeft(150);
    obj.BarraXP:setPosition(50);
    obj.BarraXP:setMax(100);

    obj.edit40 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.scrollBox1);
    obj.edit40:setWidth(35);
    obj.edit40:setHeight(20);
    obj.edit40:setTop(675);
    obj.edit40:setLeft(157);
    obj.edit40:setType("number");
    obj.edit40:setMax(9999);
    obj.edit40:setTransparent(true);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setField("XPAtual");
    obj.edit40:setName("edit40");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.scrollBox1);
    obj.label23:setWidth(35);
    obj.label23:setHeight(20);
    obj.label23:setTop(675);
    obj.label23:setLeft(205);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setFontColor("black");
    obj.label23:setText("1000");
    obj.label23:setField("XPNecessario");
    obj.label23:setName("label23");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.scrollBox1);
    obj.dataLink10:setFields({'XPAtual', 'Level'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.scrollBox1);
    obj.dataLink11:setField("Nome");
    obj.dataLink11:setName("dataLink11");


	------------------ CALCULO DAS RAÇAS -----------------------------------
	



		function self.StatusPorRaca()
			sheet.Deslocamento = 0;
			sheet.Correndo = 0;
			sheet.visao = 0;
			sheet.RegenMP = 0;      
			
			if sheet.Raca == 'Humano' then
				sheet.Deslocamento = 9;
				sheet.Correndo = 18 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 10;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);
			end;
			
			if sheet.Raca == 'Elfo' then
				sheet.Deslocamento = 8;
				sheet.Correndo = 20 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 10;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 5 + (tonumber(sheet.REGMPBasica) or 0);
			end;					
			
			if sheet.Raca == 'Elfo Negro' then
				sheet.Deslocamento = 10;
				sheet.Correndo = 17 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 11;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);
			end;
			
			if sheet.Raca == 'Anão' then
				sheet.Deslocamento = 7;
				sheet.Correndo = 15 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 10;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);
			end;	
			
			if sheet.Raca == 'Orc' then
				sheet.Deslocamento = 8;
				sheet.Correndo = 16 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 10;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);
			end;
			
			if sheet.Raca == 'Kamael' then
				sheet.Deslocamento = 8;
				sheet.Correndo = 18 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 12;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 5 + (tonumber(sheet.REGMPBasica) or 0);
			end;
			
			if sheet.Raca == 'Thiefling' then
				sheet.Deslocamento = 9;
				sheet.Correndo = 20 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 11;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);	
			end;
		end;							
	



		function self.ControlaRacaHPAte20()
			sheet.RHPNivelAte20 = sheet.Level;
			
			if sheet.RHPNivelAte20 > 20 then
				sheet.RHPNivelAte20 = 20;
			end;
			
			if sheet.Raca == 'Humano' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 10;
			end;
			
			if sheet.Raca == 'Elfo' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 8;
			end;					
			
			if sheet.Raca == 'Elfo Negro' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 8;
			end;
			
			if sheet.Raca == 'Anão' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 12;
			end;	
			
			if sheet.Raca == 'Orc' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 11;
			end;
			
			if sheet.Raca == 'Kamael' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 8;
			end;
			
			if sheet.Raca == 'Thiefling' then
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 9;				
			end;
			
		end;		
	



		function self.ControlaRacaHPAte30()   
			sheet.HPRACAATE30 = 0;        
			sheet.RHPNivelAte30 = math.floor((sheet.Level) - 20);
			
			if sheet.RHPNivelAte30 > 10 then
				sheet.RHPNivelAte30 = 10;
			end;

			if sheet.RHPNivelAte30 < 0 then
				sheet.RHPNivelAte30 = 0;
			end;		
							
			if sheet.Raca == 'Humano' then
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 20;
			end;
			
			if sheet.Raca == 'Elfo' then						
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 16;
			end;
			
			if sheet.Raca == 'Elfo Negro' then					
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 16;						
			end;
			
			if sheet.Raca == 'Anão' then						
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 24;				
			end;
			
			if sheet.Raca == 'Orc' then						
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 22;						
			end;
			
			if sheet.Raca == 'Kamael' then					
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 16;					
			end;
			
			if sheet.Raca == 'Thiefling' then				
				sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 18;				
			end;
		end;
	



		function self.StatusClasseAte20()				
			sheet.ClasseAcerto = 0;
			sheet.ClasseAM = 0;
			sheet.ClasseCR = 0;
			sheet.ClasseCM = 0;
			sheet.ClasseEsquiva = 0;
			sheet.ClassePer = 0;
		
					
			if sheet.Classe == 'Animago' then					
				sheet.ClasseAcerto = 1
				sheet.ClasseAM = 14
				sheet.ClasseCR = 20
				sheet.ClasseCM = 1
				sheet.ClasseEsquiva = 11
				sheet.ClassePer = 1						
			end;	
				
			if sheet.Classe == 'Arqueiro' then
				sheet.ClasseAcerto = 2;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Bardo' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 15;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Bispo' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 15;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Caçador de Almas' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 2;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Guerreiro' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 13;
				sheet.ClasseCR = 19;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 2;
			end;	
				
			if sheet.Classe == 'Ladino' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 12;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Mago' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 15;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;

			end;	
				
			if sheet.Classe == 'Mercenario' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 19;
				sheet.ClasseCM = 2;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Monge' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 12;
				sheet.ClassePer = 1;
			end;	
				
			if sheet.Classe == 'Paladino' then
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR= 20;
				sheet.ClasseCM = 1;
				sheet.ClasseEsquiva = 11;
				sheet.ClassePer = 1;
			end;
		end;	
	



		function self.ControlaClasseHPAte20()	
			sheet.RHPNivelAte20 = sheet.Level;
			
			if sheet.RHPNivelAte20 > 20 then
				sheet.RHPNivelAte20 = 20;
			end;
		
			if sheet.Classe == 'Animago' then		
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 14 + 170;
			end;	
				
			if sheet.Classe == 'Arqueiro' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 16 + 170;
			end;	
				
			if sheet.Classe == 'Bardo' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 12 + 150;
			end;	
				
			if sheet.Classe == 'Bispo' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 14 + 160;
			end;	
				
			if sheet.Classe == 'Caçador de Almas' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 15 + 170;
			end;	
				
			if sheet.Classe == 'Guerreiro' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 20 + 220;
			end;	
				
			if sheet.Classe == 'Ladino' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 14 + 150;
			end;	
				
			if sheet.Classe == 'Mago' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 12 + 140;
			end;	
				
			if sheet.Classe == 'Mercenario' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 16 + 170;
			end;	
				
			if sheet.Classe == 'Monge' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 16 + 180;
			end;	
				
			if sheet.Classe == 'Paladino' then
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 18 + 200;
			end;
		end;
	



		function self.StatusEspecAteLevel30() 
			if sheet.Level < 20 then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;	
			end;
			
			if sheet.Espec == 'Druida' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;							
			end;
			
			if sheet.Espec == 'Shaman' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 1;
			end;
			
			if sheet.Espec == 'Caçador' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 1;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 1;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Sentinela Lunar' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Encantador de Almas' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 1;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Necromance' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Sacerdote' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Juiz' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Barbaro' then
				sheet.EspecAcerto = 1;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Tanker' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 1;
			end;
			
			if sheet.Espec == 'Acrobata' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Assassino' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 1;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Arcanista' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Feiticeiro' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Summoner' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Duelista' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 1;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Pirata' then
				sheet.EspecAcerto = 1;
				sheet.EspecAM = 0;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Guardião Espiritual' then
				sheet.EspecAcerto = 1;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Cavaleiro das Trevas' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 0;
				sheet.EspecCR = 1;
				sheet.EspecCM = 1;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 0;
			end;
			
			if sheet.Espec == 'Templario' then
				sheet.EspecAcerto = 0;
				sheet.EspecAM = 1;
				sheet.EspecCR = 0;
				sheet.EspecCM = 0;
				sheet.EspecEsquiva = 0;
				sheet.EspecPer = 1;
			end;
		end;	
	



		function self.ControlaEspecHPAte30()
			if sheet.Level > 20 then 
				sheet.HPRACAATE30 = 0;        
				sheet.RHPNivelAte30 = math.floor((sheet.Level) - 20);
				sheet.EHPNivel = 0;	
				
				if sheet.RHPNivelAte30 > 10 then
					sheet.RHPNivelAte30 = 10;
				end;

				if sheet.RHPNivelAte30 < 0 then
					sheet.RHPNivelAte30 = 0;
				end;							
				
				if sheet.Espec == 'Druida' then
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 22 + 600;					
				end;
				
				if sheet.Espec == 'Shaman' then
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 24 + 600;
				end;
				
				if sheet.Espec == 'Caçador' then
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 22 + 600;
				end;
				
				if sheet.Espec == 'Sentinela Lunar' then
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 21 + 600;
				end;
				
				if sheet.Espec == 'Encantador de Almas' then						
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 21 + 600;
				end;
				
				if sheet.Espec == 'Necromance' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 22 + 600;
				end;
				
				if sheet.Espec == 'Sacerdote' then
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 25 + 600;
				end;
				
				if sheet.Espec == 'Juiz' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 28 + 600;
				end;
				
				if sheet.Espec == 'Barbaro' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 28 + 600;
				end;
				
				if sheet.Espec == 'Tanker' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 30 + 600;
				end;
				
				if sheet.Espec == 'Acrobata' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 23 + 600;
				end;
				
				if sheet.Espec == 'Assassino' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 21 + 600;
				end;
				
				if sheet.Espec == 'Arcanista' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 20 + 600;
				end;
				
				if sheet.Espec == 'Feiticeiro' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 22 + 600;
				end;
				
				if sheet.Espec == 'Summoner' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 20 + 600;
				end;
				
				if sheet.Espec == 'Duelista' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 24 + 600;
				end;
				
				if sheet.Espec == 'Pirata' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 26 + 600;
				end;
				
				if sheet.Espec == 'Guardião Espiritual' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 26 + 600;
				end;
				
				if sheet.Espec == 'Cavaleiro das Trevas' then							
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 29 + 600;
				end;
				
				if sheet.Espec == 'Templario' then						
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 27 + 600;
				end;
				
				if sheet.Level < 19 then
					sheet.EHPNivel = 0;
				end;
			end;
		end;	
	


 
		function self.StatusClasseEspecialAteLevel20()	
			if sheet.classe == 'Cavaleiro Draconico' then						
				sheet.Deslocamento = 9;
				sheet.Correndo = 18 + (tonumber(sheet.CorridaBasica) or 0);
				sheet.visao = 10;
				sheet.RegenMP = (tonumber(sheet.VitalidadeTotal) or 0) /4 + 4 + (tonumber(sheet.REGMPBasica) or 0);
				sheet.ClasseAcerto = 1;
				sheet.ClasseAM = 14;
				sheet.ClasseCR = 20;
				sheet.ClasseCM = 2;
				sheet.ClasseEsquiva = 10;
				sheet.ClassePer = 1;
			end;
		end;
	


 
		function self.ControlaClasseEspecialHPAte20()	
			if sheet.classe == 'Cavaleiro Draconico' then
				sheet.RHPNivelAte20 = sheet.Level;
			
				if sheet.RHPNivelAte20 > 20 then
					sheet.RHPNivelAte20 = 20;
				end;
			
				sheet.HPRACAATE20 = (tonumber(sheet.RHPNivelAte20) or 0) * 11;
				sheet.CHPNivel = (tonumber(sheet.RHPNivelAte20) or 0) * 17  + 200;
			end;					
		end;
	


 
		function self.StatusClasseEspecialAteLevel30()
			if sheet.classe == 'Cavaleiro Draconico' then
				if sheet.level > 20 then
					sheet.EspecAcerto = 0;
					sheet.EspecAM = 1;
					sheet.EspecCR = 0;
					sheet.EspecCM = 0;
					sheet.EspecEsquiva = 0;
					sheet.EspecPer = 0;
				end;
			end;
		end;
	


 
		function self.ControlaClasseEspecialHPAte30()		
			if sheet.classe == 'Cavaleiro Draconico' then
				if sheet.Level > 20 then
					sheet.HPRACAATE30 = 0;        
					sheet.RHPNivelAte30 = math.floor((sheet.Level) - 20);
					sheet.EHPNivel = 0;	
					
					if sheet.RHPNivelAte30 > 10 then
						sheet.RHPNivelAte30 = 10;
					end;

					if sheet.RHPNivelAte30 < 0 then
						sheet.RHPNivelAte30 = 0;
					end;
					
					sheet.HPRACAATE30 = (tonumber(sheet.RHPNivelAte30) or 0) * 22;
					sheet.EHPNivel = (tonumber(sheet.RHPNivelAte30) or 0) * 28 + 600;
				end;	
			end;
		end;
	


 
		function self.CalculaHP()
			if sheet.Level < 21 then
				sheet.EHPNivel = 0;
				sheet.HPRACAATE30 = 0;
			end;
			
			sheet.HPTotal = (tonumber(sheet.VitalidadeTotal) or 0) *20 + (tonumber(sheet.ArmaHP) or 0) + (tonumber(sheet.OutraHP) or 0) + 
			(tonumber(sheet.ArmaduraHP) or 0) + (tonumber(sheet.AcessorioHP) or 0) +
			(tonumber(sheet.PHPRacial) or 0) + (tonumber(sheet.PHPBasica) or 0) + (tonumber(sheet.HPRACAATE20) or 0) + (tonumber(sheet.CHPNivel) or 0) + 
			(tonumber(sheet.EHPNivel) or 0) + (tonumber(sheet.HPRACAATE30) or 0);
		end;
	



	-------------------------- Controle de MP por Classe ------------------------
		


 
			function self.ControlaClasseMP()
				sheet.Elevel = math.floor((sheet.Level) - 20);
				
				if sheet.level < 21 then
					if sheet.Classe == 'Animago' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Arqueiro' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 3 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Bardo' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Bispo' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Caçador de Almas' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Guerreiro' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 2	+ 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Ladino' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 2 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Mago' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Mercenario' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 3 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Monge' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 3 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Classe == 'Paladino' then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 3 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
				end;					

				if sheet.level > 19 then
					if sheet.Espec == 'Druida' then
						sheet.EMPNivel = (tonumber(sheet.Elevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Shaman' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Caçador' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Sentinela Lunar' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 4;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Encantador de Almas' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Necromance' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Sacerdote' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 4;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Juiz' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Barbaro' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Tanker' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Acrobata' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Assassino' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Arcanista' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Feiticeiro' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Summoner' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 4;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Duelista' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Pirata' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Guardião Espiritual' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Cavaleiro das Trevas' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 2;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
					
					if sheet.Espec == 'Templario' then
						sheet.EMPNivel = (tonumber(sheet.ELevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + (tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
				end;

				if sheet.Level < 21 then
					sheet.EMPNivel = 0;
				end;
			end;
		


 
			function self.StatusDeChances()			
				sheet.DestrezaAcerto = math.floor((tonumber(sheet.DestrezaTotal) or 0) /4);
					
					sheet.AgilidadeESQ = math.floor((tonumber(sheet.AgilidadeTotal) or 0) /5);

					sheet.ForcaPer = math.ceil((tonumber(sheet.ForcaTotal) or 0) /30);
						
					sheet.Acerto = math.floor((tonumber(sheet.ClasseAcerto) or 0) + (tonumber(sheet.EspecAcerto) or 0) + (tonumber(sheet.DestrezaAcerto) or 0) + (tonumber(sheet.AcertoBasica) or 0) + (tonumber(sheet.AcertoRacial) or 0));

					if sheet.Level > 20 then
						sheet.AcertoMagico = math.floor((tonumber(sheet.ClasseAM) or 0) + (tonumber(sheet.EspecAM) or 0) + (tonumber(sheet.AMBasica) or 0) + (tonumber(sheet.AMRacial) or 0));
					else 
						sheet.AcertoMagico = math.floor((tonumber(sheet.ClasseAM) or 0) + (tonumber(sheet.AMBasica) or 0) + (tonumber(sheet.AMRacial) or 0));
					end;
					
					if sheet.Level > 20 then
						sheet.Critical = math.floor((tonumber(sheet.ClasseCR) or 0) - (tonumber(sheet.EspecCR) or 0) - (tonumber(sheet.CritBasica) or 0) - (tonumber(sheet.CritRacial) or 0));
					else 
						sheet.Critical = math.floor((tonumber(sheet.ClasseCR) or 0) - (tonumber(sheet.CritBasica) or 0) - (tonumber(sheet.CritRacial) or 0));
					end;
					
					if sheet.Level > 20 then
						sheet.CMagico = math.floor((tonumber(sheet.ClasseCM) or 0) + (tonumber(sheet.EspecCM) or 0) + (tonumber(sheet.CMBasica) or 0) + (tonumber(sheet.CMRacial) or 0));
					else 
						sheet.CMagico = math.floor((tonumber(sheet.ClasseCM) or 0) + (tonumber(sheet.CMBasica) or 0) + (tonumber(sheet.CMRacial) or 0));
					end;
					
					if sheet.Level > 20 then
						sheet.Esquiva = math.floor((tonumber(sheet.ClasseEsquiva) or 0) + (tonumber(sheet.EspecEsquiva) or 0) + (tonumber(sheet.ESQBasica) or 0) + (tonumber(sheet.ESQRacial) or 0) + (tonumber(sheet.AgilidadeESQ) or 0));
					else 
						sheet.Esquiva = math.floor((tonumber(sheet.ClasseEsquiva) or 0) + (tonumber(sheet.ESQBasica) or 0) + (tonumber(sheet.ESQRacial) or 0) + (tonumber(sheet.AgilidadeESQ) or 0));
					end;

					if sheet.Level > 20 then
						sheet.Persistencia = math.floor((tonumber(sheet.ClassePer) or 0) + (tonumber(sheet.EspecPer) or 0) + (tonumber(sheet.PersistBasica) or 0) + (tonumber(sheet.PersistRacial) or 0) + (tonumber(sheet.ForcaPer) or 0)); 
					else 
						sheet.Persistencia = math.floor((tonumber(sheet.ClassePer) or 0) + (tonumber(sheet.PersistBasica) or 0) + (tonumber(sheet.PersistRacial) or 0) + (tonumber(sheet.ForcaPer) or 0));
					end;		
						
					if sheet.Esquiva > 14 then
						sheet.Esquiva = 14;
					end;
							
					if sheet.Acerto > 6 then
						sheet.Acerto = 6;
					end;
					
					if sheet.Persistencia > 5 then
						sheet.Persistencia = 5;
					end;	
			end;
		


 
			function self.ChecaCavaleiroDraconicoMP()			
				if sheet.Classe == 'Cavaleiro Draconico' then
					if sheet.level < 21 then
						sheet.RMPNivel = (tonumber(sheet.Level) or 0) * 4 + 100;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + 
						(tonumber(sheet.MPMont) or 0) + (tonumber(sheet.DMP) or 0);
					end;
				end;

					if sheet.Classe == 'Cavaleiro Draconico' then
					if sheet.level > 19 then
						sheet.EMPNivel = (tonumber(sheet.Elevel) or 0) * 3;
						sheet.MPTotal =  (tonumber(sheet.MP) or 0) + (tonumber(sheet.InteligenciaTotal) or 0) + (tonumber(sheet.ArmaMP) or 0) + 
						(tonumber(sheet.OutraMP) or 0) + (tonumber(sheet.ArmaduraMP) or 0) + (tonumber(sheet.AcessorioMP) or 0) + (tonumber(sheet.MPMont) or 0) +
						(tonumber(sheet.PMPRacial) or 0) + (tonumber(sheet.PMPBasica) or 0) + (tonumber(sheet.RMPNivel) or 0) + 
						(tonumber(sheet.EMPNivel) or 0) + (tonumber(sheet.DMP) or 0);
					end;
				end;				
			end;
		


 
			function self.ChecaLevel20()			
				if sheet.Level >= 20 then
					self.cmbEspecializa.enabled = true;
				else	
					self.cmbEspecializa.enabled = false;
				end;					
			end;
		


    obj._e_event0 = obj:addEventListener("onNodeReady",
        function (_)
            sheet.Classe = sheet.Classe or "Animago";
            		sheet.Espec = sheet.Espec or "Escolha";
            		sheet.Raca = sheet.Raca or "Humano";
            		sheet.LiberarRolagemUp = tonumber(sheet.LiberarRolagemUp or 0);
            		
            		if sheet.Level == nil then
            			sheet.Level = 0; 
            		end;
            		
            		if sheet.Velis == nil then
            			sheet.Velis = "D10+10"; 		
            		end;
            		
            		if sheet.Nome == nil then
            			sheet.Nome = "Escolha o Nome";
            		end;	
            
            		if sheet.sloot == nil then
            			sheet.sloot = 4;
            		end;
            		
            		if sheet.Forca == nil then
            			sheet.Forca = 0; 		
            		end;
            		
            		if sheet.Inteligencia == nil then
            			sheet.Inteligencia = 0;
            		end;	
            
            		if sheet.Destreza == nil then
            			sheet.Destreza = 0;
            		end;
            		
            		if sheet.Agilidade == nil then
            			sheet.Agilidade = 0; 		
            		end;
            		
            		if sheet.Vitalidade == nil then
            			sheet.Vitalidade = 0;
            		end;	
            		
            		sheet.ForcaTotal = (tonumber(sheet.ForcaTotal) or 0); 
            		sheet.Acerto = (tonumber(sheet.Acerto) or 0); 
            		sheet.AcertoMagico	= (tonumber(sheet.AcertoMagico) or 0); 
            		sheet.Critical = (tonumber(sheet.Critical) or 0); 
            		sheet.CMagico = (tonumber(sheet.CMagico) or 0); 
            		sheet.Esquiva = (tonumber(sheet.Esquiva) or 0); 
            		sheet.Persistencia = (tonumber(sheet.Persistencia) or 0); 
            		sheet.ArmaPA = (tonumber(sheet.ArmaPA) or 0); 
            		sheet.ArmaPM = (tonumber(sheet.ArmaPM) or 0); 
            		sheet.ArmaPF = (tonumber(sheet.ArmaPF) or 0); 
            		sheet.ArmaDEF = (tonumber(sheet.ArmaDEF) or 0); 
            		sheet.ArmaRES = (tonumber(sheet.ArmaRES) or 0); 
            		sheet.ArmaHP = (tonumber(sheet.ArmaHP) or 0); 
            		sheet.ArmaMP = (tonumber(sheet.ArmaMP) or 0); 
            		sheet.OutraPA = (tonumber(sheet.OutraPA) or 0); 
            		sheet.OutraPM = (tonumber(sheet.OutraPM) or 0); 
            		sheet.OutraPF = (tonumber(sheet.OutraPF) or 0); 
            		sheet.OutraDEF = (tonumber(sheet.OutraDEF) or 0); 
            		sheet.OutraRES = (tonumber(sheet.OutraRES) or 0); 
            		sheet.OutraHP = (tonumber(sheet.OutraHP) or 0); 
            		sheet.OutraMP = (tonumber(sheet.OutraMP) or 0); 
            		sheet.ArmaduraPA = (tonumber(sheet.ArmaduraPA) or 0); 
            		sheet.ArmaduraPM = (tonumber(sheet.ArmaduraPM) or 0); 
            		sheet.ArmaduraPF = (tonumber(sheet.ArmaduraPF) or 0); 
            		sheet.ArmaduraDEF = (tonumber(sheet.ArmaduraDEF) or 0); 
            		sheet.ArmaduraRES = (tonumber(sheet.ArmaduraRES) or 0); 
            		sheet.ArmaduraHP = (tonumber(sheet.ArmaduraHP) or 0); 
            		sheet.ArmaduraMP = (tonumber(sheet.ArmaduraMP) or 0); 
            		sheet.AcessorioPA = (tonumber(sheet.AcessorioPA) or 0); 
            		sheet.AcessorioPM = (tonumber(sheet.AcessorioPM) or 0); 
            		sheet.AcessorioPF = (tonumber(sheet.AcessorioPF) or 0); 
            		sheet.AcessorioDEF = (tonumber(sheet.AcessorioDEF) or 0); 
            		sheet.AcessorioRES = (tonumber(sheet.AcessorioRES) or 0); 
            		sheet.AcessorioHP = (tonumber(sheet.AcessorioHP) or 0); 
            		sheet.AcessorioMP = (tonumber(sheet.AcessorioMP) or 0); 
            		sheet.ArmaDistancia = (tonumber(sheet.ArmaDistancia) or 0); 
            		sheet.OutraDistancia = (tonumber(sheet.OutraDistancia) or 0); 
            		sheet.ArmaduraDistancia = (tonumber(sheet.ArmaduraDistancia) or 0); 
            		sheet.AcessorioDistancia = (tonumber(sheet.AcessorioDistancia) or 0); 
            		sheet.Sabedoria = (tonumber(sheet.Sabedoria) or 0); 
            		sheet.Atletismo = (tonumber(sheet.Atletismo) or 0); 
            		sheet.Acrobacia = (tonumber(sheet.Acrobacia) or 0); 
            		sheet.Vigor = (tonumber(sheet.Vigor) or 0); 
            		sheet.Percepcao = (tonumber(sheet.Percepcao) or 0); 
            		sheet.Deslocamento = (tonumber(sheet.Deslocamento) or 0); 
            		sheet.Distancia = (tonumber(sheet.Distancia) or 0); 
            		sheet.Potes = (tonumber(sheet.Potes) or 0); 
            		sheet.MontAtletismo = (tonumber(sheet.MontAtletismo) or 0); 
            		sheet.MontSabedoria = (tonumber(sheet.MontSabedoria) or 0); 
            		sheet.Montpercepcao = (tonumber(sheet.MontPercepcao) or 0); 
            		sheet.MontVigor = (tonumber(sheet.MontVigor) or 0); 
            		sheet.MPMont = (tonumber(sheet.MPMont) or 0); 
            		sheet.MontESPACO = (tonumber(sheet.MontESPACO) or 0); 
            		sheet.idade = sheet.idade or "Depende da sua Raça"; 
            		sheet.HPTotal = (tonumber(sheet.HPTotal) or 0); 
            		sheet.MPTotal = (tonumber(sheet.MPTotal) or 0); 		
            		sheet.DanoHabilidade1 = (tonumber(sheet.DanoHabilidade1) or 0); 
            		sheet.CuraHabilidade1 = (tonumber(sheet.CuraHabilidade1) or 0); 
            		sheet.Current = (tonumber(sheet.Current) or 0); 
            		sheet.DPTHabilidade1 = (tonumber(sheet.DPTHabilidade1) or 0); 
            		sheet.Hintensidade1 = (tonumber(sheet.Hintensidade1) or 0); 
            		
            		sheet.NomeBasica = (tonumber(sheet.NomeBasica) or 0); 	
            		sheet.BasicaDescri = (tonumber(sheet.BasicaDescri) or 0);
            		sheet.DanoBasica = (tonumber(sheet.DanoBasica) or 0); 	
            		sheet.CustoBasica = (tonumber(sheet.CustoBasica) or 0); 	
            		sheet.DTBasica = (tonumber(sheet.DTBasica) or 0); 
            		sheet.PABasica = (tonumber(sheet.PABasica) or 0); 
            		sheet.PMBasica = (tonumber(sheet.PMBasica) or 0); 	
            		sheet.PFBasica = (tonumber(sheet.PFBasica) or 0); 	
            		sheet.DEFBasica = (tonumber(sheet.DEFBasica) or 0); 	
            		sheet.RESBasica = (tonumber(sheet.RESBasica) or 0); 
            		sheet.AcertoBasica = (tonumber(sheet.AcertoBasica) or 0); 	
            		sheet.AMBasica = (tonumber(sheet.AMBasica) or 0); 	
            		sheet.ESQBasica = (tonumber(sheet.ESQBasica) or 0); 
            		sheet.CritBasica = (tonumber(sheet.CritBasica) or 0); 	
            		sheet.CMBasica = (tonumber(sheet.CMBasica) or 0); 	
            		sheet.PersistBasica = (tonumber(sheet.PersistBasica) or 0); 	
            		sheet.PHPBasica = (tonumber(sheet.PHPBasica) or 0); 	
            		sheet.PMPBasica = (tonumber(sheet.PMPBasica) or 0); 		
            		sheet.NomeRacial = (tonumber(sheet.NomeRacial) or 0); 	
            		sheet.RacialDescri = (tonumber(sheet.RacialDescri) or 0);
            		sheet.DanoRacial = (tonumber(sheet.DanoRacial) or 0); 	
            		sheet.CustoRacial = (tonumber(sheet.CustoRacial) or 0); 	
            		sheet.DTRacial = (tonumber(sheet.DTRacial) or 0); 
            		sheet.PARacial = (tonumber(sheet.PARacial) or 0); 
            		sheet.PMRacial = (tonumber(sheet.PMRacial) or 0); 	
            		sheet.PFRacial = (tonumber(sheet.PFRacial) or 0); 	
            		sheet.DEFRacial = (tonumber(sheet.DEFRacial) or 0); 	
            		sheet.RESRacial = (tonumber(sheet.RESRacial) or 0); 
            		sheet.AcertoRacial = (tonumber(sheet.AcertoRacial) or 0); 	
            		sheet.AMRacial = (tonumber(sheet.AMRacial) or 0); 	
            		sheet.ESQRacial = (tonumber(sheet.ESQRacial) or 0); 
            		sheet.CritRacial = (tonumber(sheet.CritRacial) or 0); 	
            		sheet.CMRacial = (tonumber(sheet.CMRacial) or 0); 	
            		sheet.PersistRacial = (tonumber(sheet.PersistRacial) or 0); 	
            		sheet.PHPRacial = (tonumber(sheet.PHPRacial) or 0); 	
            		sheet.PMPRacial = (tonumber(sheet.PMPRacial) or 0); 
            		
            		sheet.R30HPNivel = (tonumber(sheet.R30HPNivel) or 0); 	
            		sheet.MHPNivel = (tonumber(sheet.MHPNivel) or 0); 
            		sheet.MMPNivel = (tonumber(sheet.MMPNivel) or 0); 
            		
            		sheet.DForca = (tonumber(sheet.DForca) or 0); 	
            		sheet.DAgilidade = (tonumber(sheet.DAgilidade) or 0); 
            		sheet.DInteligencia = (tonumber(sheet.DInteligencia) or 0); 
            		sheet.DVitalidade = (tonumber(sheet.DVitalidade) or 0); 	
            		sheet.DDestreza = (tonumber(sheet.DDestreza) or 0); 
            		sheet.DMP = (tonumber(sheet.DMP) or 0);
            		
            		sheet.RHPNivel = (tonumber(sheet.RHPNivel) or 0);
            		sheet.CHPNivel = (tonumber(sheet.CHPNivel) or 0); 
            		sheet.EHPNivel = (tonumber(sheet.EHPNivel) or 0); 
            		sheet.R20HPNivel = (tonumber(sheet.R20HPNivel) or 0); 
            		sheet.RMPNivel = (tonumber(sheet.RMPNivel) or 0); 
            		sheet.EMPNivel = (tonumber(sheet.EMPNivel) or 0); 
            		 
            		sheet.LVDivino = (tonumber(sheet.LVDivino) or 0);
            		sheet.RegenMP = (tonumber(sheet.RegenMP) or 0); 
            		sheet.Visao = (tonumber(sheet.Visao) or 0); 
            		sheet.Deslocamento = (tonumber(sheet.Deslocamento) or 0); 
            		sheet.Correndo = (tonumber(sheet.Correndo) or 0);
            		sheet.Potes = (tonumber(sheet.Potes) or 0); 
            		sheet.Distancia = (tonumber(sheet.Distancia) or 0); 	
            
            		sheet.RealDeslocamento = (tonumber(sheet.RealDeslocamento) or 0); 	
            		sheet.RealVisao = (tonumber(sheet.RealVisao) or 0);
            
            		sheet.REGMPBasica = (tonumber(sheet.REGMPBasica) or 0);
            		sheet.VisaoBasica = (tonumber(sheet.VisaoBasica) or 0);
            		sheet.CorridaBasica = (tonumber(sheet.CorridaBasica) or 0);
            		sheet.DeslocamentoBasica = (tonumber(sheet.DeslocamentoBasica) or 0);
            		
            		sheet.ClasseAM = (tonumber(sheet.ClasseAM) or 0);
            		sheet.ClasseCM = (tonumber(sheet.ClasseCM) or 0);
            		sheet.ClasseCR = (tonumber(sheet.ClasseCR) or 0);
            		sheet.ClasseAcerto = (tonumber(sheet.ClasseAcerto) or 0);
            		sheet.ClasseEsquiva = (tonumber(sheet.ClasseEsquiva) or 0);
            		sheet.ClassePer = (tonumber(sheet.ClassePer) or 0);
            		
            		sheet.EspecAM = (tonumber(sheet.EspecAM) or 0);
            		sheet.EspecCM = (tonumber(sheet.EspecCM) or 0);
            		sheet.EspecCR = (tonumber(sheet.EspecCR) or 0);
            		sheet.EspecAcerto = (tonumber(sheet.EspecAcerto) or 0);
            		sheet.EspecEsquiva = (tonumber(sheet.EspecEsquiva) or 0);
            		sheet.EspecPer = (tonumber(sheet.EspecPer) or 0);
            		self.cmbEspecializa.enabled = false;
            		sheet.CLevel = (tonumber(sheet.CLevel) or 0);
            		
            		sheet.ControladorAtributos = (tonumber(sheet.ControladorAtributos) or 8);
            		
            		sheet.jaRecebeu = sheet.jaRecebeu or false;	
            		
            			if sheet.jaRecebeu == false then 
            				showMessage("Bem vindo a velen");
            				showMessage("Por padrão classe, especialização e raça foram selecionadas para seu personagem, mas voce deve alterar e escolher a que for de sua vontade");
            				sheet.jaRecebeu = true;
            			end; 
            		sheet.SequenciaInicial = sheet.SequenciaInicial or true;
        end, obj);

    obj._e_event1 = obj.button1:addEventListener("onClick",
        function (_)
            DiminuirPontosForca();
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (_)
            AumentarPontosForca();
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (_)
            DiminuirPontosInteligencia();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (_)
            AumentarPontosInteligencia();
        end, obj);

    obj._e_event5 = obj.button5:addEventListener("onClick",
        function (_)
            DiminuirPontosDestreza();
        end, obj);

    obj._e_event6 = obj.button6:addEventListener("onClick",
        function (_)
            AumentarPontosDestreza();
        end, obj);

    obj._e_event7 = obj.button7:addEventListener("onClick",
        function (_)
            DiminuirPontosAgilidade();
        end, obj);

    obj._e_event8 = obj.button8:addEventListener("onClick",
        function (_)
            AumentarPontosAgilidade();
        end, obj);

    obj._e_event9 = obj.button9:addEventListener("onClick",
        function (_)
            DiminuirPontosVitalidade();
        end, obj);

    obj._e_event10 = obj.button10:addEventListener("onClick",
        function (_)
            AumentarPontosVitalidade();
        end, obj);

    obj._e_event11 = obj.button11:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmequip");
            				novoForm:setNodeObject(sheet);
            				novoForm:show();
        end, obj);

    obj._e_event12 = obj.button12:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmhabilidade");
            				novoForm:setNodeObject(sheet);
            				novoForm:show();
        end, obj);

    obj._e_event13 = obj.button13:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmHistoria");
            				novoForm:setNodeObject(sheet);
            				novoForm:show();
        end, obj);

    obj._e_event14 = obj.button14:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmsummon");
            				novoForm:setNodeObject(sheet);
            				novoForm:show();
        end, obj);

    obj._e_event15 = obj.button15:addEventListener("onClick",
        function (_)
            local novoForm = GUI.newForm("frmpersonagem");
            				novoForm:setNodeObject(sheet);
            				novoForm:show();
        end, obj);

    obj._e_event16 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Level ~= nil then	
            				if sheet.level > 0 then
            					if sheet.Raca == 'Humano' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.1	
            					else if sheet.Raca == 'Elfo' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.3
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.0	
            					else if sheet.Raca == 'Elfo Negro' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.1
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.3
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.0
            					else if sheet.Raca == 'Anão' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.4
            					else if sheet.Raca == 'Orc' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.4
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.2
            					else if sheet.Raca == 'Kamael' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.3
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.0
            					else if sheet.Raca == 'Thiefling' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.0
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.3
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.0		
            					end	
            					end
            					end
            					end
            					end
            					end
            					end;
            				end;		
            			
             
            			if sheet.Level ~= nil then
            				if sheet.Level > 0 then
            					if sheet.classe == 'Cavaleiro Draconico' then
            						sheet.FNivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.INivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.DNivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.ANivel = (tonumber(sheet.Level) or 0) * 0.2
            						sheet.VNivel = (tonumber(sheet.Level) or 0) * 0.2
            					end;	
            				end;
            			end;
            		end;
        end, obj);

    obj._e_event17 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            -- Status Total --
            
            			sheet.ForcaTotal = (math.floor((tonumber(sheet.Forca) or 0) + (tonumber(sheet.FNIvel) or 0) + (tonumber(sheet.DForca) or 0)) or 0) or 1;
            			sheet.InteligenciaTotal	= math.floor((tonumber(sheet.Inteligencia) or 0) + (tonumber(sheet.INivel) or 0) + (tonumber(sheet.DInteligencia) or 0));
            			sheet.DestrezaTotal = math.floor((tonumber(sheet.Destreza) or 0) + (tonumber(sheet.DNivel) or 0) + (tonumber(sheet.DDestreza) or 0));
            			sheet.AgilidadeTotal = math.floor((tonumber(sheet.Agilidade) or 0) + (tonumber(sheet.ANIvel) or 0) + (tonumber(sheet.DAgilidade) or 0));
            			sheet.VitalidadeTotal = math.floor((tonumber(sheet.Vitalidade) or 0) + (tonumber(sheet.VNIvel) or 0) + (tonumber(sheet.DVitalidade) or 0));
        end, obj);

    obj._e_event18 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.ADeslocamento = (tonumber(sheet.AgilidadeTotal) or 0) /10;
            			sheet.RealDeslocamento = (tonumber(sheet.ADeslocamento) or 0) + (tonumber(sheet.Deslocamento) or 0) + (tonumber(sheet.DeslocamentoBasica) or 0);			
            			sheet.DVisao = (tonumber(sheet.DestrezaTotal) or 0) /10;
            			sheet.RealVisao = (tonumber(sheet.DVisao) or 0) + (tonumber(sheet.Visao) or 0) + (tonumber(sheet.VisaoBasica) or 0);
        end, obj);

    obj._e_event19 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            --PA, PM , PF, RES e Def --
            			if sheet.SequenciaInicial == true then
            				if sheet.Classe == 'Monge' then
            					sheet.PA = math.floor((tonumber(sheet.ForcaTotal) or 0) *4 + (tonumber(sheet.ArmaPA) or 0) + (tonumber(sheet.OutraPA) or 0) + (tonumber(sheet.ArmaduraPA) or 0) + (tonumber(sheet.AcessorioPA) or 0) +
            										 (tonumber(sheet.PARacial) or 0) + (tonumber(sheet.PABasica) or 0));
            				else 
            					sheet.PA =  math.floor((tonumber(sheet.ForcaTotal) or 0) *2 + (tonumber(sheet.ArmaPA) or 0) + (tonumber(sheet.OutraPA) or 0) + (tonumber(sheet.ArmaduraPA) or 0) + (tonumber(sheet.AcessorioPA) or 0) +
            										  (tonumber(sheet.PARacial) or 0) + (tonumber(sheet.PABasica) or 0));
            				end;
            				 
            				sheet.PM =  math.floor((tonumber(sheet.InteligenciaTotal) or 0) *2 + (tonumber(sheet.ArmaPM) or 0) + (tonumber(sheet.OutraPM) or 0) + (tonumber(sheet.ArmaduraPM) or 0) + (tonumber(sheet.AcessorioPM) or 0) +
            									  (tonumber(sheet.PMRacial) or 0) + (tonumber(sheet.PMBasica) or 0));
            				sheet.PF =  math.floor((tonumber(sheet.DestrezaTotal) or 0) *2 + (tonumber(sheet.ArmaPF) or 0) + (tonumber(sheet.OutraPF) or 0) + (tonumber(sheet.ArmaduraPF) or 0) + (tonumber(sheet.AcessorioPF) or 0) +
            									  (tonumber(sheet.PFRacial) or 0) + (tonumber(sheet.PFBasica) or 0));			
            				sheet.Defesa =  math.floor((tonumber(sheet.VitalidadeTotal) or 0) /2 + (tonumber(sheet.AgilidadeTotal) or 0) /2 + (tonumber(sheet.ArmaDEF) or 0) + 
            										  (tonumber(sheet.OutraDEF) or 0) + (tonumber(sheet.ArmaduraDEF) or 0) + (tonumber(sheet.AcessorioDEF) or 0) + (tonumber(sheet.DEFRacial) or 0) + (tonumber(sheet.DEFBasica) or 0));
            				sheet.Resistencia = math.floor((tonumber(sheet.VitalidadeTotal) or 0) /2) + ((tonumber(sheet.Defesa) or 0) /2) +
            											   ((tonumber(sheet.InteligenciaTotal) or 0) /2) + (tonumber(sheet.ArmaRES) or 0) + (tonumber(sheet.OutraRES) or 0) + 
            											   (tonumber(sheet.ArmaduraRES) or 0) + (tonumber(sheet.AcessorioRES) or 0) + (tonumber(sheet.RESRacial) or 0) + (tonumber(sheet.RESBasica	) or 0) + math.floor(tonumber(sheet.ForcaTotal * 0.25) or 0);
            			end;
        end, obj);

    obj._e_event20 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            ---------------------------------------------
            			---------------------------------------------
            			------[[Calculo de Redução Porcentado]]------
            			---------------------------------------------
            			---------------------------------------------	
            			if sheet.Level == 30 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /5);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /5);
            			end;	
            				
            			if sheet.level == 29 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /4.5);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /4.5);
            			end;
            			
            			if sheet.level == 28 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /4.2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /4.2);
            			end;
            			
            			if sheet.level == 27 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3.9);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3.9);
            			end;
            			
            			if sheet.level == 26 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3.8);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3.8);
            			end;
            
            			if sheet.level == 25 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3.6);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3.6);
            			end;
            			
            			if sheet.level == 24 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3.4);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3.4);
            			end;
            			
            			if sheet.level == 23 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3.2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3.2);
            			end;
            			
            			if sheet.level == 22 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /3);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /3);
            			end;
            			
            			if sheet.level == 21 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /2.8);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /2.8);
            			end;
            			
            			if sheet.level == 20 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /2.5);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /2.5);
            			end;
            			
            			if sheet.level == 19 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /2.4);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /2.4);
            			end;
            			
            			if sheet.level == 18 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /2.2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /2.2);
            			end;
            			
            			if sheet.level == 17 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /2);
            			end;
            			
            			if sheet.level == 16 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.9);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.9);
            			end;
            			
            			if sheet.level == 15 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.8);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.8);
            			end;
            			
            			if sheet.level == 14 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.6);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.6);
            			end;
            			
            			if sheet.level == 13 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.5);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.5);
            			end;
            			
            			if sheet.level == 12 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.3);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.3);
            			end;
            			
            			if sheet.level == 11 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.2);
            			end;
            			
            			if sheet.level == 10 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1.1);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1.1);
            			end;
            			
            			if sheet.level == 9 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /1);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /1);
            			end;
            			
            			if sheet.level == 8 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.92);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.92);
            			end;
            			
            			if sheet.level == 7 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.8);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.8);
            			end;
            			
            			if sheet.level == 6 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.7);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.7);
            			end;
            			
            			if sheet.level == 5 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.5);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.5);
            			end;
            			
            			if sheet.level == 4 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.4);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.4);
            			end;
            			
            			if sheet.level == 3 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.3);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.3);
            			end;
            			
            			if sheet.level == 2 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.2);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.2);
            			end;
            			
            			if sheet.level == 1 then 
            				sheet.DEFRED = math.floor((tonumber(sheet.Defesa) or 0) /0.15);
            				sheet.RESRED = math.floor((tonumber(sheet.Resistencia) or 0) /0.15);
            			end;
        end, obj);

    obj._e_event21 = obj.button16:addEventListener("onClick",
        function (_)
            showMessage('P.A = Poder de Ataque 2x a Força, Se for Monge 4x Força');
        end, obj);

    obj._e_event22 = obj.button17:addEventListener("onClick",
        function (_)
            showMessage('P.M = Poder Magico 2x a Inteligencia');
        end, obj);

    obj._e_event23 = obj.button18:addEventListener("onClick",
        function (_)
            showMessage('P.F = Poder de Fogo 2x a Destreza');
        end, obj);

    obj._e_event24 = obj.button19:addEventListener("onClick",
        function (_)
            showMessage('DEF = Defesa Fisica que é Armadura + Metade da Vitalidade e Metade da Agilidade');
        end, obj);

    obj._e_event25 = obj.button20:addEventListener("onClick",
        function (_)
            showMessage('RES = Resistencia Magica que é Metade da Força + Metade da Vitalidade + Metade da Defesa');
        end, obj);

    obj._e_event26 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.SequenciaInicial == true then
            				self.StatusPorRaca(); 
            				self.ControlaRacaHPAte20();
            				self.ControlaRacaHPAte30();
            				self.StatusClasseAte20();
            				self.ControlaClasseHPAte20();
            				self.StatusEspecAteLevel30();
            				self.ControlaEspecHPAte30();
            				self.StatusClasseEspecialAteLevel20();
            				self.ControlaClasseEspecialHPAte20();
            				self.StatusClasseEspecialAteLevel30();
            				self.ControlaClasseEspecialHPAte30();
            				self.CalculaHP();				
            			end;
        end, obj);

    obj._e_event27 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.SequenciaInicial == true then			
            				
            				sheet.CLevel = (tonumber(sheet.Level) or 0);
            				if sheet.CLevel > 20 then
            					sheet.CLevel = 20;
            				end;	
            				
            				if sheet.classe == 'Cavaleiro Draconico' then
            					self.cmbEspecializa.enabled = false;
            				else	
            					self.cmbEspecializa.enabled = true;
            				end;	
            				
            				self.ChecaCavaleiroDraconicoMP();
            				self.ControlaClasseMP();
            				self.ChecaLevel20();				
            			end;
        end, obj);

    obj._e_event28 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.SequenciaInicial == true then			
            
            			end;
        end, obj);

    obj._e_event29 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.SequenciaInicial == true then
            				self.StatusDeChances();
            				self.ChecaLevel20();					
            			end;
        end, obj);

    obj._e_event30 = obj.button21:addEventListener("onClick",
        function (_)
            AtaqueBasico()
        end, obj);

    obj._e_event31 = obj.btnUpaLevel:addEventListener("onClick",
        function (_)
            RolarAtributoPorUpar()
        end, obj);

    obj._e_event32 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.SequenciaInicial == true then	
            				sheet.XPAtual = tonumber(sheet.XPAtual) or 0;
            				sheet.XPNecessario = tonumber(sheet.level) * 100;
            				if sheet.XPAtual >= sheet.XPNecessario then
            					sheet.XPAtual = tonumber(sheet.XPAtual) - tonumber(sheet.XPNecessario);
            					sheet.level = tonumber(sheet.level) + 1;
            					sheet.LiberarRolagemUp = tonumber(sheet.LiberarRolagemUp) + 1;
            				end;			
            				self.BarraXP.value = tonumber(sheet.XPAtual);
            				self.BarraXP.max = tonumber(sheet.XPNecessario);
            				
            				if sheet.LiberarRolagemUp > 0 then
            					self.btnUpaLevel.visible = true;
            				else
            					self.btnUpaLevel.visible = false
            				end;
            			end;
        end, obj);

    obj._e_event33 = obj.dataLink11:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet.Nome == 'DeLevel' then	
            					sheet.level = tonumber(sheet.level) - 1;
            					sheet.LiberarRolagemUp = tonumber(sheet.LiberarRolagemUp) - 1;
            					sheet.Nome = 'Feito';			
            				end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.BarraXP ~= nil then self.BarraXP:destroy(); self.BarraXP = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.btnUpaLevel ~= nil then self.btnUpaLevel:destroy(); self.btnUpaLevel = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.cmbEspecializa ~= nil then self.cmbEspecializa:destroy(); self.cmbEspecializa = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmvelen()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmvelen();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmvelen = {
    newEditor = newfrmvelen, 
    new = newfrmvelen, 
    name = "frmvelen", 
    dataType = "com.velen", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Velen 4", 
    description=""};

frmvelen = _frmvelen;
Firecast.registrarForm(_frmvelen);
Firecast.registrarDataType(_frmvelen);

return _frmvelen;
