@Controller
public ​ ​class ​ Question1 {
    private static final String replace_str="(truncated)";

    
    public String truncate(String str, int l){
        if(l>str.length() || l<replace_str.length()){
            return str;
        }else{
            return str.substring(0, 2)+"..."+replace_str+"..."+str.substring(str.length()-2);
        }
    }
}
