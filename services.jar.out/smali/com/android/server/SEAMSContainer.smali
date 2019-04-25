.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "com.samsung.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "com.samsung.intent.action.SECONTAINER_REMOVED"

.field public static final KNOXCONTAINER_START_SPACE:I = 0x1

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_SPACE:I = 0x2bc

.field public static final OTHER_CONTAINER_START_SPACE:I = 0x66

.field public static final REMOVE_SEAMSCONTAINER_TYPE:I = 0x0

.field public static final SEAMSCONTAINER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final USER_VALUE:I = 0x62

.field protected static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    const-class v8, Lcom/android/server/SEAMSContainer;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string v10, "addEntryToMac_begin"

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", seinfo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", space: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", appType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", agent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    const/4 v0, 0x0

    move-object v13, v0

    :try_start_1
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v16
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_50
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v16, :cond_3

    :try_start_2
    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v16, :cond_1

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v18, v9

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v19, v10

    :try_start_4
    const-string/jumbo v10, "macPermFile exists "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v14, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_18

    :catch_4
    move-exception v0

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_19

    :cond_1
    move/from16 v18, v9

    move/from16 v19, v10

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z

    :cond_2
    invoke-virtual {v15, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x1

    move-object v13, v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_16

    :catch_7
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_17

    :catch_8
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_18

    :catch_9
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_19

    :catch_a
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_15

    :catch_b
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_16

    :catch_c
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_17

    :catch_d
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_18

    :catch_e
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    goto/16 :goto_19

    :cond_3
    move/from16 v18, v9

    move/from16 v19, v10

    :try_start_5
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_49
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_48
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_47
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addEntryToMac,"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not exist, creating file"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_49
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_47
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :try_start_9
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v13, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_4b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_4a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_49
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_48
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_47
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v10, v19

    :goto_1
    :try_start_a
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v20, v16

    const-string/jumbo v0, "signer"

    move-object/from16 v14, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_44
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_43
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_42
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v21, v0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/4 v0, 0x0

    move-object/from16 v17, v0

    :try_start_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_3c
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_45
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_44
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_42
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v11, v0

    nop

    const/4 v0, 0x0

    move-object/from16 v23, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_1b

    const/4 v0, 0x4

    if-ne v6, v0, :cond_6

    :try_start_c
    const-string/jumbo v24, "service"

    move-object/from16 v25, v24

    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    move-object/from16 v26, v23

    move-object/from16 v27, v0

    const-string/jumbo v0, "name"

    move-object/from16 v28, v9

    move-object/from16 v9, v26

    invoke-interface {v9, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "space"
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v29, v12

    :try_start_d
    const-string v12, "1023"

    invoke-interface {v9, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowSpace"

    const-string v12, "0,701-1023"

    invoke-interface {v9, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "containerAllowSpace"

    invoke-interface {v9, v0, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v27

    goto/16 :goto_3

    :catch_f
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_10

    :catch_10
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_11

    :catch_11
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_12

    :catch_12
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_13

    :catch_13
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v10

    goto/16 :goto_14

    :cond_6
    move-object/from16 v28, v9

    move-object/from16 v29, v12

    const/4 v0, 0x3

    if-ne v6, v0, :cond_9

    const-string/jumbo v0, "service"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    const-string/jumbo v12, "name"

    invoke-interface {v9, v12, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "seinfo"

    invoke-interface {v9, v12, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "space"

    invoke-interface {v9, v12, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "1023"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "allowSpace"

    move-object/from16 v30, v0

    const-string v0, "0,701-1023"

    invoke-interface {v9, v12, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object/from16 v30, v0

    const-string v0, "allowSpace"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0,"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v7, :cond_8

    const-string v0, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v0, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    move-object/from16 v23, v30

    goto :goto_3

    :catch_14
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_15

    :catch_15
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_16

    :catch_16
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_17

    :catch_17
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_18

    :catch_18
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_19

    :cond_9
    move-object/from16 v9, v22

    :goto_3
    :try_start_e
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_3b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_3a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_39
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_38
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_37
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v0, :cond_a

    :try_start_f
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string v12, "addentrytomac - done with preparing entry"

    invoke-virtual {v0, v4, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_a
    :try_start_10
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-string/jumbo v4, "signer"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    const-string/jumbo v12, "seinfo"

    invoke-interface {v13, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    const-string v7, "allow-all"

    invoke-interface {v13, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_3b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_3a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_39
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_37
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v0, :cond_16

    move-object/from16 v31, v15

    const/4 v15, 0x1

    if-ne v11, v15, :cond_b

    :try_start_11
    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_11
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    const-string v1, "default"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v32, v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v15, v21

    goto/16 :goto_b

    :catch_19
    move-exception v0

    move/from16 v33, v10

    :goto_4
    move-object/from16 v1, p0

    goto/16 :goto_15

    :catch_1a
    move-exception v0

    move/from16 v33, v10

    :goto_5
    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_1b
    move-exception v0

    move/from16 v33, v10

    :goto_6
    move-object/from16 v1, p0

    goto/16 :goto_17

    :catch_1c
    move-exception v0

    move/from16 v33, v10

    :goto_7
    move-object/from16 v1, p0

    goto/16 :goto_18

    :catch_1d
    move-exception v0

    move/from16 v33, v10

    :goto_8
    move-object/from16 v1, p0

    goto/16 :goto_19

    :cond_b
    const/4 v1, 0x1

    if-ne v11, v1, :cond_c

    const-string/jumbo v1, "signature"

    invoke-interface {v4, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "space"

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "allowSpace"

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-interface {v12, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/xml/sax/SAXException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_12} :catch_1c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_19
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_c
    const/4 v1, 0x0

    :goto_9
    move-object/from16 v32, v0

    move-object/from16 v15, v21

    :try_start_13
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_13} :catch_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_13} :catch_26
    .catch Ljavax/xml/transform/TransformerException; {:try_start_13 .. :try_end_13} :catch_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_23
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move/from16 v33, v10

    :try_start_14
    const-string/jumbo v10, "signature"

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-static {v0, v3}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const/16 v16, -0x9

    if-eqz v10, :cond_f

    move-object/from16 v34, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_e

    const/4 v0, 0x3

    if-ne v6, v0, :cond_e

    const-string v0, "1023"
    :try_end_14
    .catch Lorg/xml/sax/SAXException; {:try_start_14 .. :try_end_14} :catch_22
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_14 .. :try_end_14} :catch_21
    .catch Ljavax/xml/transform/TransformerException; {:try_start_14 .. :try_end_14} :catch_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1e
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-object/from16 v35, v13

    :try_start_15
    const-string/jumbo v13, "space"

    invoke-interface {v10, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    move-object/from16 v36, v14

    const-string v14, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_1"

    invoke-virtual {v0, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_15} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_15} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_15 .. :try_end_15} :catch_2a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_28
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    monitor-exit v8

    return v16

    :cond_d
    move-object/from16 v36, v14

    goto :goto_a

    :cond_e
    move-object/from16 v35, v13

    move-object/from16 v36, v14

    goto :goto_a

    :cond_f
    move-object/from16 v34, v0

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    :goto_a
    if-eqz v10, :cond_12

    const/4 v13, 0x1

    if-ne v11, v13, :cond_12

    const/4 v14, 0x4

    if-ne v6, v14, :cond_12

    :try_start_16
    const-string v0, "containerAllowSpace"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string v14, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_2"

    invoke-virtual {v0, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/xml/sax/SAXException; {:try_start_16 .. :try_end_16} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_16 .. :try_end_16} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_16 .. :try_end_16} :catch_2a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_29
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_28
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit v8

    return v16

    :cond_10
    :try_start_17
    const-string v0, "containerAllowSpace"

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/server/SEAMSContainer;->checkSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addEntryToMac, Existing "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " entry for "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", return true and continue with next step"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/xml/sax/SAXException; {:try_start_17 .. :try_end_17} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_17 .. :try_end_17} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_17 .. :try_end_17} :catch_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_29
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_28
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit v8

    return v16

    :cond_11
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "containerAllowSpace"

    invoke-interface {v10, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "containerAllowSpace"

    invoke-interface {v10, v6, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    nop

    move/from16 v18, v6

    goto/16 :goto_c

    :cond_12
    invoke-interface {v15, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addEntryToMac, signature match found. Appending elem of ContainerType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v6, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_18} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_18} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_18} :catch_2a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_28
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_13
    const/4 v0, 0x1

    nop

    move/from16 v18, v0

    goto/16 :goto_c

    :cond_14
    move-object/from16 v34, v0

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const/4 v0, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x4

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v15

    move-object/from16 v0, v32

    move/from16 v10, v33

    move-object/from16 v16, v34

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move/from16 v6, p5

    goto/16 :goto_9

    :catch_1e
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_15

    :catch_1f
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_20
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_17

    :catch_21
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_18

    :catch_22
    move-exception v0

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_19

    :cond_15
    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v34, v16

    goto/16 :goto_c

    :catch_23
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_15

    :catch_24
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_25
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_17

    :catch_26
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_18

    :catch_27
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v1, p0

    goto/16 :goto_19

    :cond_16
    move-object/from16 v32, v0

    move/from16 v33, v10

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :goto_b
    :try_start_19
    const-string/jumbo v0, "signature"

    invoke-interface {v4, v0, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    const-string/jumbo v1, "untrusted"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "space"

    const-string v1, "1023"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allowSpace"

    const-string v1, "0,701-1023"

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_19 .. :try_end_19} :catch_36
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19 .. :try_end_19} :catch_35
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_19} :catch_34
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_32
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v0, :cond_17

    :try_start_1a
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    const-string v6, "addEntryToMac seandroidinfo = null"

    invoke-virtual {v0, v1, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object/from16 v34, v16

    :goto_c
    if-nez v18, :cond_18

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v1, v36

    invoke-interface {v1, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1a
    .catch Lorg/xml/sax/SAXException; {:try_start_1a .. :try_end_1a} :catch_2c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a .. :try_end_1a} :catch_2b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_1a} :catch_2a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_28
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_d

    :catch_28
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_4

    :catch_29
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_5

    :catch_2a
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_6

    :catch_2b
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_7

    :catch_2c
    move-exception v0

    move-object/from16 v13, v35

    goto/16 :goto_8

    :cond_18
    move-object/from16 v1, v36

    :goto_d
    move-object/from16 v13, v35

    :try_start_1b
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    const/4 v10, 0x0

    if-eqz v33, :cond_19

    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v13}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v14

    goto :goto_e

    :cond_19
    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v14

    :goto_e
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;
    :try_end_1b
    .catch Lorg/xml/sax/SAXException; {:try_start_1b .. :try_end_1b} :catch_31
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b .. :try_end_1b} :catch_30
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1b .. :try_end_1b} :catch_2f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    :try_start_1c
    invoke-direct {v14, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v10, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_1a

    move-object/from16 v38, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_1c} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c .. :try_end_1c} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1c .. :try_end_1c} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3d
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_f

    :cond_1a
    move-object/from16 v38, v0

    :goto_f
    monitor-exit v8

    const/4 v0, 0x0

    return v0

    :catch_2d
    move-exception v0

    goto/16 :goto_4

    :catch_2e
    move-exception v0

    goto/16 :goto_5

    :catch_2f
    move-exception v0

    goto/16 :goto_6

    :catch_30
    move-exception v0

    goto/16 :goto_7

    :catch_31
    move-exception v0

    goto/16 :goto_8

    :catch_32
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_15

    :catch_33
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_16

    :catch_34
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_17

    :catch_35
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_18

    :catch_36
    move-exception v0

    move-object/from16 v13, v35

    move-object/from16 v1, p0

    goto/16 :goto_19

    :catch_37
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_15

    :catch_38
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_16

    :catch_39
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_17

    :catch_3a
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_18

    :catch_3b
    move-exception v0

    move/from16 v33, v10

    goto/16 :goto_19

    :cond_1b
    move-object/from16 v28, v9

    move/from16 v33, v10

    move-object/from16 v29, v12

    move-object/from16 v37, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :try_start_1d
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addEntryToMac is not supported for containertype:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_1d} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d .. :try_end_1d} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d .. :try_end_1d} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catch_3c
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v33, v10

    move-object/from16 v29, v12

    move-object/from16 v37, v14

    move-object/from16 v31, v15

    move-object/from16 v15, v21

    :try_start_1e
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "space: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " integer parse failed"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_1e} :catch_41
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1e .. :try_end_1e} :catch_40
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1e .. :try_end_1e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catch_3d
    move-exception v0

    goto/16 :goto_15

    :catch_3e
    move-exception v0

    goto/16 :goto_16

    :catch_3f
    move-exception v0

    goto/16 :goto_17

    :catch_40
    move-exception v0

    goto/16 :goto_18

    :catch_41
    move-exception v0

    goto/16 :goto_19

    :catch_42
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto :goto_15

    :catch_43
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_16

    :catch_44
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_17

    :catch_45
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_18

    :catch_46
    move-exception v0

    move/from16 v33, v10

    move-object/from16 v29, v12

    goto/16 :goto_19

    :catch_47
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_10
    goto :goto_15

    :catch_48
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_11
    goto :goto_16

    :catch_49
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_12
    goto :goto_17

    :catch_4a
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_13
    goto/16 :goto_18

    :catch_4b
    move-exception v0

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_14
    goto/16 :goto_19

    :catch_4c
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_15
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :catch_4d
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :catch_4e
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_17
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_4f
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_18
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_50
    move-exception v0

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v29, v12

    move/from16 v33, v19

    :goto_19
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v6}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    invoke-virtual {v7, v9, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    nop

    :goto_1b
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string v6, "addEntryToMac, POLICY_FAILED is returned"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    monitor-exit v8

    const/4 v4, -0x1

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    const-string v2, "checkContainerIDEntryExists: curElem is null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-nez p3, :cond_5

    :goto_0
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_8

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v1, v0

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_8
    :goto_2
    return-object v1
.end method

.method private static checkSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSpace: existingContAllowSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static checkSpaceRange(Ljava/lang/String;III)I
    .locals 8

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSpace: existingContAllowSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", startRange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_1

    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_3

    :cond_1
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_2

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_3

    :cond_2
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, p1, :cond_4

    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found other container space:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in contAllowCat is :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_4
    goto :goto_1

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, p1, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gt v5, p2, :cond_6

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found other container space:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in contAllowCat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    nop

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkSpaceRange, FALSE is returned"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "NumberFormatException in checkSpaceRange"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    nop

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "agent"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "seinfo"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getContainerType(I)I
    .locals 1

    const/16 v0, 0xc7

    if-le p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p1

    const-class v2, Lcom/android/server/SEAMSContainer;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSignatureEntryFromMac packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string/jumbo v9, "macpermfile exists"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object/from16 v7, p0

    :try_start_2
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v6, v8

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v9, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v14, :cond_2

    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    const-string v10, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    invoke-virtual {v14, v15, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string/jumbo v0, "the signer length is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v17, v0

    :goto_0
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v0, v10, :cond_5

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v12, v10

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    :goto_2
    if-eqz v10, :cond_4

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "seinfo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "name"

    invoke-interface {v10, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "signature"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v14

    monitor-exit v2

    return-object v3

    :cond_3
    :try_start_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v10, v14

    goto :goto_2

    :cond_4
    add-int/lit8 v16, v0, 0x1

    goto :goto_1

    :cond_5
    goto :goto_4

    :cond_6
    move-object/from16 v7, p0

    move-object/from16 v17, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSignatureEntryFromMac, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " does not exist, creating file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    monitor-exit v2

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string/jumbo v4, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object v3, v1

    const/high16 v4, 0x8000000

    :try_start_0
    invoke-interface {v2, p0, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v3, v4

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v4}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    array-length v7, v4

    if-ge v6, v7, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v5

    :cond_2
    nop

    return-object v1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 23

    move/from16 v1, p3

    const-class v2, Lcom/android/server/SEAMSContainer;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "Entered isContainerEmpty in SEAMSContainer"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    :try_start_1
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_f

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_20
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    :try_start_2
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string/jumbo v9, "macpermfile exists"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    :goto_0
    move-object/from16 v14, p2

    :goto_1
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_2
    move-object/from16 v4, p1

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_3
    move-object/from16 v14, p2

    :goto_4
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_5
    move-object/from16 v4, p1

    goto/16 :goto_18

    :catch_2
    move-exception v0

    move-object/from16 v7, p0

    :goto_6
    move-object/from16 v14, p2

    :goto_7
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_8
    move-object/from16 v4, p1

    goto/16 :goto_1b

    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    :goto_9
    move-object/from16 v14, p2

    :goto_a
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_b
    move-object/from16 v4, p1

    goto/16 :goto_1e

    :cond_1
    :goto_c
    move-object/from16 v7, p0

    :try_start_3
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v6, v8

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v6, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v9, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_18
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_2

    :try_start_4
    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "the signer length is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v15, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_9

    :cond_2
    :goto_d
    :try_start_5
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    :try_start_6
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMSContainer"

    const-string v14, "Check if there is a package name match"

    invoke-virtual {v5, v10, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :try_start_7
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_e

    const/4 v5, 0x0

    invoke-interface {v11, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    move-object v5, v14

    const-string/jumbo v12, "signature"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_18
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v14, p2

    :try_start_8
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "service"

    invoke-interface {v5, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_17
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v10, 0x2

    if-eq v15, v10, :cond_6

    const/4 v15, 0x1

    if-ne v1, v15, :cond_5

    :try_start_9
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-eq v10, v15, :cond_4

    goto :goto_e

    :cond_4
    move-object/from16 v17, v0

    goto :goto_f

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_4

    :catch_a
    move-exception v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    goto/16 :goto_a

    :cond_5
    :goto_e
    sget-object v10, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "SEAMSContainer"

    move-object/from16 v17, v0

    const-string/jumbo v0, "service entry different than expected"

    invoke-virtual {v10, v15, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :cond_6
    move-object/from16 v17, v0

    :goto_f
    const/4 v0, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    :goto_10
    move/from16 v15, v16

    move-object/from16 v18, v0

    :try_start_a
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v15, v0, :cond_a

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v16, :cond_7

    move-object/from16 v19, v3

    :try_start_b
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v20, v4

    :try_start_c
    const-string v4, "SEAMSContainer"

    move-object/from16 v21, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v6

    const-string/jumbo v6, "isContainerEmpty, curElem name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_c
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_15

    :catch_d
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_18

    :catch_e
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_1b

    :catch_f
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    goto/16 :goto_1e

    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    :goto_11
    const-string/jumbo v3, "name"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v4, p1

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    const-string/jumbo v6, "isContainerEmpty, agent packagename with generic_mdm seinfo"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    add-int/lit8 v10, v10, 0x1

    :cond_9
    add-int/lit8 v16, v15, 0x1

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_10

    :catch_10
    move-exception v0

    goto/16 :goto_2

    :catch_11
    move-exception v0

    goto/16 :goto_5

    :catch_12
    move-exception v0

    goto/16 :goto_8

    :catch_13
    move-exception v0

    goto/16 :goto_b

    :cond_a
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    const/4 v0, 0x2

    if-eq v10, v0, :cond_c

    const/4 v0, 0x1

    if-ne v10, v0, :cond_b

    if-ne v1, v0, :cond_b

    goto :goto_12

    :cond_b
    goto/16 :goto_1f

    :cond_c
    const/4 v0, 0x1

    :goto_12
    monitor-exit v2

    return v0

    :cond_d
    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    :try_start_e
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v5, "Container has signature mis-match with agent"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catch_14
    move-exception v0

    goto/16 :goto_14

    :catch_15
    move-exception v0

    goto/16 :goto_17

    :catch_16
    move-exception v0

    goto/16 :goto_1a

    :catch_17
    move-exception v0

    goto/16 :goto_1d

    :cond_e
    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v6

    move-object/from16 v4, p1

    :try_start_f
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v5, "Container non-empty"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f .. :try_end_f} :catch_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catch_18
    move-exception v0

    goto :goto_13

    :catch_19
    move-exception v0

    goto :goto_16

    :catch_1a
    move-exception v0

    goto :goto_19

    :catch_1b
    move-exception v0

    goto/16 :goto_1c

    :cond_f
    move-object/from16 v7, p0

    move-object/from16 v14, p2

    move-object/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :try_start_10
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isContainerEmpty, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist, return failed "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catch_1c
    move-exception v0

    goto :goto_15

    :catch_1d
    move-exception v0

    goto :goto_18

    :catch_1e
    move-exception v0

    goto :goto_1b

    :catch_1f
    move-exception v0

    goto :goto_1e

    :catch_20
    move-exception v0

    move-object/from16 v7, p0

    :goto_13
    move-object/from16 v14, p2

    :goto_14
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_15
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    :catch_21
    move-exception v0

    move-object/from16 v7, p0

    :goto_16
    move-object/from16 v14, p2

    :goto_17
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    :catch_22
    move-exception v0

    move-object/from16 v7, p0

    :goto_19
    move-object/from16 v14, p2

    :goto_1a
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_1b
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1f

    :catch_23
    move-exception v0

    move-object/from16 v7, p0

    :goto_1c
    move-object/from16 v14, p2

    :goto_1d
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    :goto_1e
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :goto_1f
    nop

    :goto_20
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string/jumbo v5, "isContainerEmpty, POLICY_FAILED is returned"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit v2

    const/4 v2, -0x1

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    const-class v6, Lcom/android/server/SEAMSContainer;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string/jumbo v8, "removeEntryFromMac_begin"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v12

    :try_start_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_18

    sget-boolean v13, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_1

    :try_start_4
    sget-object v13, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    const-string/jumbo v15, "macpermfile exists"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    goto/16 :goto_e

    :cond_1
    :goto_0
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v13
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v14, 0x1

    if-nez v13, :cond_2

    :try_start_6
    invoke-virtual {v1, v14}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    :try_start_7
    invoke-virtual {v10, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v13

    move-object v11, v13

    invoke-interface {v11}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v13, "policy"

    invoke-interface {v11, v13}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v15, 0x0

    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v15, v16

    const-string/jumbo v12, "signer"

    invoke-interface {v15, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-boolean v18, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v18, :cond_3

    sget-object v14, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_7
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move/from16 v19, v7

    :try_start_8
    const-string v7, "SEAMSContainer"
    :try_end_8
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v20, v8

    :try_start_9
    const-string v8, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    invoke-virtual {v14, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v21, v9

    :try_start_a
    const-string/jumbo v9, "the signer length is "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_c

    :catch_8
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_a

    :catch_b
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_b

    :catch_c
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_c

    :catch_d
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_d

    :catch_e
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v7, v19

    goto/16 :goto_e

    :cond_3
    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_1
    const/4 v7, 0x0

    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_13

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "signature"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMSContainer"

    move-object/from16 v22, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v13

    const-string/jumbo v13, "matched signature found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v14, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    :goto_3
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_6

    if-eq v5, v9, :cond_5

    if-nez v5, :cond_6

    :cond_5
    invoke-static {v8, v3, v4, v5}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v10

    :goto_4
    goto :goto_5

    :cond_6
    if-nez v5, :cond_7

    invoke-static {v8, v3, v4, v5}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_4

    :cond_7
    invoke-static {v8, v3}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    goto :goto_4

    :goto_5
    if-eqz v10, :cond_b

    if-eq v5, v9, :cond_8

    if-nez v5, :cond_b

    :cond_8
    const-string/jumbo v9, "space"

    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_9

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEntryFromMac, "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " match found for "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..deleting elem"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    nop

    :goto_6
    move v7, v2

    goto/16 :goto_8

    :cond_a
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeEntryFromMac, no match found for"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_15
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_b
    if-eqz v10, :cond_11

    const/4 v2, 0x4

    if-ne v5, v2, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_10

    if-ne v5, v2, :cond_10

    :try_start_b
    const-string v2, "containerAllowSpace"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "removeEntryFromMac, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " match found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "..deleting elem"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string/jumbo v14, "it is for Generic Trusted with partial space match"

    invoke-virtual {v2, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v2, "containerAllowSpace"

    invoke-interface {v10, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/server/SEAMSContainer;->removeSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v9, "containerAllowSpace"

    invoke-interface {v10, v9, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    nop

    move v7, v9

    goto :goto_8

    :cond_f
    nop

    :cond_10
    move-object/from16 v17, v10

    goto :goto_7

    :cond_11
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signature matches but no entry for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v9, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_b} :catch_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_15
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_12
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    const/4 v9, 0x1

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v8

    move-object/from16 v10, v22

    move-object/from16 v13, v23

    move-object/from16 v2, p1

    goto/16 :goto_2

    :cond_13
    move-object/from16 v22, v10

    move-object/from16 v23, v13

    move-object/from16 v8, v16

    move-object/from16 v10, v17

    move/from16 v7, v19

    :goto_8
    if-eqz v7, :cond_17

    :try_start_c
    const-string/jumbo v2, "service"

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-nez v9, :cond_14

    invoke-interface {v15, v8}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_14
    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_15

    sget-object v9, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMSContainer"

    const-string/jumbo v14, "removeEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v9, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-interface {v11}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    new-instance v14, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v14, v11}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move/from16 v24, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v13, v14, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v16, :cond_16

    move-object/from16 v25, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v26, v2

    const-string v2, "SEAMSContainer"

    const-string v5, " removeEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    goto :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_a

    :catch_10
    move-exception v0

    goto/16 :goto_b

    :catch_11
    move-exception v0

    goto/16 :goto_c

    :catch_12
    move-exception v0

    goto/16 :goto_d

    :catch_13
    move-exception v0

    goto/16 :goto_e

    :cond_17
    move/from16 v24, v0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Please check again"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_c
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_f

    :cond_18
    move/from16 v24, v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :try_start_d
    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeEntryFromMac, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist, creating file"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_d} :catch_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_15
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :catch_14
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    :try_start_e
    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "space: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " integer parse failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_19
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e .. :try_end_e} :catch_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :catch_15
    move-exception v0

    move/from16 v7, v19

    goto :goto_a

    :catch_16
    move-exception v0

    move/from16 v7, v19

    goto :goto_b

    :catch_17
    move-exception v0

    move/from16 v7, v19

    goto :goto_c

    :catch_18
    move-exception v0

    move/from16 v7, v19

    goto :goto_d

    :catch_19
    move-exception v0

    move/from16 v7, v19

    goto :goto_e

    :catch_1a
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_a
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :catch_1b
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :catch_1c
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_c
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_f

    :catch_1d
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_d
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_f

    :catch_1e
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    :goto_e
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_19
    :goto_f
    nop

    :goto_10
    monitor-exit v6

    return v7

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static removeSpace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeSpace, return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMSContainer"

    const-string/jumbo v5, "removeSpace, null is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public activateDomain(IZ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public createSEContainer(II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected deleteSEContainerClipboardTableEntry(II)I
    .locals 15

    move-object v1, p0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v2, v0

    const-string v0, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "containerID"

    const-string/jumbo v3, "mode"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v0, v6

    const/4 v7, 0x1

    aput-object v5, v0, v7

    move-object v8, v0

    move v9, v6

    const/4 v10, -0x1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const-string/jumbo v12, "mode"

    invoke-virtual {v0, v11, v12, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    sget-object v11, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Checking if entry already exists:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "SeamsClipboardTable"

    invoke-virtual {v11, v12, v3, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v11

    move v9, v11

    sget-object v11, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMSContainer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSEContainerClipboardTable: ret = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v10

    :goto_0
    return v6

    :cond_2
    :goto_1
    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string v11, "cvOld null or size 0"

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    const-string/jumbo v11, "no entry in database to delete"

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v0

    sget-object v6, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMSContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateSEContainerClipboardTable Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10
.end method

.method public getActivationStatus()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "entered getMDMID"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v3, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v3}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    move-object v0, v3

    sget-object v3, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMSContainer"

    const-string v6, "MDMID package name is null"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    return-object v0

    :cond_3
    :goto_0
    sget-object v5, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    const-string v7, "MDMID certs are null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I
    .locals 4

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMSContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadContainerSetting_begin packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "containerID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/pm/PackageManagerSEAMS;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return v0

    :cond_5
    :goto_0
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    monitor-enter p0

    monitor-exit p0

    const/4 v0, -0x1

    return v0
.end method

.method public removeSEContainer(III)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public updateSeappContextsAndReload()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
