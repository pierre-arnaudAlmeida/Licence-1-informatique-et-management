with ada.text_io; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with ada.Numerics.Elementary_Functions;use ada.Numerics.Elementary_Functions;
with ada.Float_Text_IO; use ada.Float_Text_IO;

procedure cours is
   N,A,B,S:integer;

   type coord is record -- type
      X,Y : Integer;
   end record;
   C:coord :=(2,5);
   D:coord;
   Procedure Affiche ( Coordonnée : in coord ) is
   begin
      put("("); put(coordonnée.X);Put(",");put(Coordonnée.Y);put(")");
   end affiche;

   --affiche les coordonnées.

   procedure saisir (Coo : out coord) is
   begin
      Put("saisir La valeur X : ");get(Coo.X);New_Line;Put("saisir la valeur Y : "); Get(Coo.Y);
   end saisir;

   --saisir les coordonées

   function intsqrt (K : Integer) return integer is
   begin
      S:=0;
      While K>=(S+1)**2 loop
         S:=S+1;
      end loop; return S;
      end intsqrt;

   -- racine carré entière

   function distance (C,D : coord) return integer is
   begin
     return intsqrt((C.X-D.X)**2+(C.Y-D.Y)**2);
   end distance;

     --calcule la distance cd.

   function Cours1(Nombre : integer) return Boolean is begin -- function nom ( parametres ) return type is declaration begin utilisation dans les calculs
      if N mod 2 =1 then return False; else return True;
      end if;
   end Cours1; -- fin fonction

   -- permet de déterminer si le nombre est pair ou  non

   procedure Cours2(N : in integer)is -- procedure (parametre) is declare begin corps puis end.  pas d'utilisation dans les calculs: instructions
      K:integer;
   begin
      k:=0;
      for I in 1..N loop
         Put("*");K:=K+1;
      end loop;
      new_line;
   end Cours2;

   -- modes qui indique les informations : recoit donne ou les deux
   -- in : valeur en entrée seulement (put-> contient la valeur), out : parametre en sortie seulement (get->donne la valeur)
   -- in out: parametre d'entrée et de sortie : parametre : uniquement une variable

   function add (A,B :  integer) return Integer is begin
      return A + B;
   end add;

   --fonction addition

begin
   Put("entrez la valeur N : "); get(N);
   for I in 1..N loop
      Cours2(I); -- appel a la procedure cours2 permettant de renvoyer une information : sous programme créé. paranthese necessaire
   end loop;

   If Cours1(N)=True then -- appel a la fonction mathematique cours1 c'est aussi un sous programme mais ici elle reverra une expression paranthese nécessaire
      put("ok");            -- test si n est pair ou non
   else
      put("poke");
   end if;

   new_line;New_line;
   Put("entrez A: "); get(A); Put("entrez B : "); get(B);
   Put(5+add(A,add(B,A))); -- appel a la fonction addition
   New_Line;New_Line;
   Affiche(C);New_Line;New_Line;
   saisir(D);New_Line;New_Line;
   Affiche(D);New_Line;New_Line;  -- les new_line permettent un affichage plus clair
   Put ("distance Point C et D : ");
   Put(Distance(C,D));

end Cours;
