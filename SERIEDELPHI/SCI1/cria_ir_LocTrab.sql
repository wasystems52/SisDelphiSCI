ALTER TABLE LocTrab
ADD CONSTRAINT fk_clifor_ID FOREIGN KEY (id_pro) REFERENCES cliFor(id),
ADD CONSTRAINT fk_clifor_ID1 FOREIGN KEY (id_esc) REFERENCES cliFor(id);

