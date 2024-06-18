ALTER TABLE cliFor
ADD CONSTRAINT fk_clifor_Uf FOREIGN KEY (id_uf) REFERENCES UF(id) ON UPDATE CASCADE,
ADD CONSTRAINT fk_clifor_VendInt FOREIGN KEY (id_vendInt) REFERENCES vendInt(id) ON UPDATE CASCADE,
ADD CONSTRAINT fk_clifor_VendExt FOREIGN KEY (id_vendExt) REFERENCES vendExt(id) ON UPDATE CASCADE,
ADD CONSTRAINT fk_clifor_ativ FOREIGN KEY (id_ativ) REFERENCES ativ(id) ON UPDATE CASCADE,
ADD CONSTRAINT fk_clifor_transp FOREIGN KEY (id_transp) REFERENCES transp(id) ON UPDATE CASCADE;

