# MVC design pattern

Model View Controller design pattern

* Model - The model contains the underlying data and logic that users want to see and manipulate. Backend
          Independent existence of model from view and controller.

* View - The view gives a user a way to see the model or alteast parts of model. Frontend

* Controller - Controller interprets the user's interaction with elements in the view and modifies the 
               model itself.

```java

//MODEL
public class StoreOrder extends Observable {
    private ArrayList<String> itemList;
    private ArrayList<BigDecimal> priceList;
    
    public StoreOrder() {
        itemList = new ArrayList<String>();
        priceList = new ArrayList<BigDecimal>();
    }

    public String getItem( int itemNum ) {
        return itemList.get(itemNum);
    }

    public String getPrice( int itemNum ) {
        return priceList.get(itemNum);
    }

    public ListIterator<String> getItemList() {
        ListIterator<String> itemItr = itemList.listIterator();
        return itemItr;
    }

    public ListIterator<BigDecimal> getPriceList() {
        ListIterator<String> priceItr =
        priceList.listIterator();
        return priceItr;
    }

    public void deleteItem( int itemNum ) {
        itemList.remove(itemNum);
        priceList.remove(itemNum);
        setChanged();
        notifyObservers();
    }

    public void addItem( int barcode ) {
        // code to add item (probably used with a scanner) , prices are looked up from a database
        ...
        setChanged();
        notifyObservers();
    }

    public void changePrice( int itemNum, BigDecimal newPrice){
        priceList.set(itemNum,newPrice);
        setChanged();
        notifyObservers();
    }
}

//VIEW
public class OrderView extends JPanel implements Observer,
    ActionListener {
        // Controller
        private OrderController controller;
        // User-Interface Elements
        private JFrame frame;
        private JButton changePriceButton;
        private JButton deleteItemButton;
        private JTextField newPriceField;
        private JLabel totalLabel;
        private JTable groceryList;
        private void createUI() {

        // Initialize UI elements. e.g.:
        deleteItemButton = new JButton("Delete Item");
        add(deleteItemButton);
        ...
        // Add listeners. e.g.:
        deleteItemButton.addActionListener(this);
        ...
    }
    public void update ( Observable s, Object arg ) {
        display(((StoreOrder) s).getItemList(), ((StoreOrders).getPriceList());
    }

    public OrderView(OrderController controller) {
        this.controller = controller;
        createUI();
    }

    public void display ( ArrayList itemList, ArrayList
        priceList ) {
        // code to display order
        ...
    }

    public void actionPerformed(ActionEvent event) {
        if (event.getSource() == deleteItemButton) {
            controller.deleteItem(groceryList.getSelectedRow());
        }
        else if (event.getSource() == changePriceButton) {
            BigDecimal newPrice = new
            BigDecimal(newPriceField.getText());
            controller.changePrice(groceryList.getSelectedRow(),
            newPrice);
        }
    }
}

//CONTROLLER
public class OrderController {
    private StoreOrder storeOrder;
    private OrderView orderView;

    public OrderController(StoreOrder storeOrder, OrderView orderView) {
        this.storeOrder = storeOrder;
        this.orderView = orderView;
    }

    public void deleteItem( int itemNum ) {
        storeOrder.deleteItem( itemNum );
    }

    public void changePrice(int itemNum, BigDecimal newPrice) {
        storeOrder.changePrice( itemNum, newPrice );
    }
}

```