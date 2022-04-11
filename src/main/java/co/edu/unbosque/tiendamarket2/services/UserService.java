package co.edu.unbosque.tiendamarket2.services;

import co.edu.unbosque.tiendamarket2.dtos.User;
import com.opencsv.CSVReader;
import com.opencsv.CSVWriter;
import com.opencsv.ICSVWriter;
import com.opencsv.bean.CsvToBean;
import com.opencsv.bean.CsvToBeanBuilder;
import com.opencsv.bean.HeaderColumnNameMappingStrategy;
import com.opencsv.exceptions.CsvValidationException;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

public class UserService {

    public Optional<List<User>> getUsers(String path) throws IOException{

        List<User> users;

        //verifica que el archivo existe
        try(InputStream is = UserService.class.getClassLoader().getResourceAsStream(path)){
            if(is==null){
                return Optional.empty();
            }

            //crea la estrategia de lectura para el csv
            HeaderColumnNameMappingStrategy<User> strategy = new HeaderColumnNameMappingStrategy<>();
            strategy.setType(User.class);

            //lee el csv y lo guarda en una lista
            try(BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8))){
                CsvToBean<User> csvToBean = new CsvToBeanBuilder<User>(br).withType(User.class).withMappingStrategy(strategy).withIgnoreLeadingWhiteSpace(true).build();

                users = csvToBean.parse();
            }
        }

        return Optional.of(users);
    }

    public Optional<Boolean> createUser(String name, String lastname,String username,String password,String role,String fcoin,String path) throws IOException {
        try{
            String newLine = "\n"+name+ "," +lastname+ "," +username + "," + password + "," +role+ "," +fcoin;
            FileOutputStream os = new FileOutputStream(path, true);
            os.write(newLine.getBytes());
            os.close();
            return Optional.of(true);
        } catch (IOException e) {
            e.printStackTrace();
            return Optional.of(false);
        }
    }

    public Optional<Boolean> loadFcoins(String username,String path,String Fcoins){
        try {
            String accountsPath = "./accounts.csv";

            List<User> users = getUsers(accountsPath).get();

            User user1 = users.stream().filter(user-> username.equals(user.getUsername())).findFirst().get();
            users.remove(user1);
            user1.setFcoins(Fcoins);
            users.add(user1);

            File accounts = new File(path);
            accounts.delete();
            accounts.createNewFile();
            FileOutputStream os = new FileOutputStream(accounts.getPath(), true);

            String header = "name,lastname,username,password,role,fcoins\n";
            os.write(header.getBytes());

            for (int i =0;i<users.size();i++){
                String newLine = users.get(i).getName()+ "," +users.get(i).getLastname()+ "," +users.get(i).getUsername() + "," + users.get(i).getPassword() + "," +users.get(i).getRole()+ "," +users.get(i).getFcoins()+"\n";
                os.write(newLine.getBytes());
            }
            os.close();
            return Optional.of(true);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return Optional.of(false);
        } catch (IOException e) {
            e.printStackTrace();
            return Optional.of(false);
        }
    }
}
