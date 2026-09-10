package org.example.client.core;

import javafx.application.Application;
import javafx.stage.Stage;

public class ClientMain extends Application {

  public static void main(String[] args) {
    launch();
  }

  @Override
  public void start(Stage primaryStage) {
    ClientFactory clientFactory = new ClientFactory();
    clientFactory.getViewHandler().start(primaryStage);
  }
}
