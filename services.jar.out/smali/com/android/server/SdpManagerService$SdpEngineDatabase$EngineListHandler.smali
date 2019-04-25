.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x1

.field private static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"

.field private static final TAG_ENGINE:Ljava/lang/String; = "engine"

.field private static final TAG_ENGINE_LIST:Ljava/lang/String; = "engine_list"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x1

    move v5, v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Lcom/android/internal/os/AtomicFile;

    move-result-object v6

    move-object v1, v6

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    move-object v2, v6

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    :goto_1
    if-eq v10, v3, :cond_5

    if-eqz v10, :cond_3

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "engine"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v12, "alias"

    const/4 v13, 0x0

    invoke-interface {v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "id"

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    nop

    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v9, v12

    if-ltz v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    move v13, v3

    nop

    :cond_0
    move v5, v13

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->access$2600()Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    const/4 v9, -0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    const-string v12, "Suspicious of damaged file..."

    invoke-direct {v3, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    nop

    :cond_4
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v11

    goto :goto_1

    :cond_5
    nop

    if-eqz v2, :cond_6

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :cond_6
    :goto_3
    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_2
    iget-object v6, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v6, v6, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EngineListHandler :: Failed to get engine list... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v3, v8}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    :cond_7
    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    :cond_8
    :goto_4
    nop

    move v3, v4

    goto/16 :goto_0

    :goto_5
    if-eqz v2, :cond_9

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v6

    :cond_9
    :goto_6
    throw v3

    :cond_a
    const/4 v3, 0x0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEngineListXmlFile()Lcom/android/internal/os/AtomicFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Lcom/android/internal/os/AtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListXmlFile(I)Lcom/android/internal/os/AtomicFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to get engine list due to non-existence..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v1, v0}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private updateEngineListLocked()I
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/16 v4, -0x63

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Lcom/android/internal/os/AtomicFile;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v3, v6

    nop

    iget-object v6, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v6, v6, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->delete()V

    return v7

    :cond_0
    move v6, v5

    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    move-object v0, v8

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v8

    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v9, "UTF-8"

    invoke-interface {v8, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v5, "engine_list"

    invoke-interface {v8, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v9, v9, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v9}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    :goto_0
    if-ge v5, v9, :cond_1

    iget-object v10, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v10, v10, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v10}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v11, v11, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->access$2400(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string/jumbo v12, "engine"

    invoke-interface {v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v12, "alias"

    invoke-virtual {v11}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v2, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "id"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v2, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "engine"

    invoke-interface {v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "engine_list"

    invoke-interface {v8, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v3, v0}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v5, v5, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string v8, "SdpManagerService"

    const-string v9, "Failed to update engine list..."

    invoke-static {v5, v8, v2, v9}, Lcom/android/server/SdpManagerService;->access$2500(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 v6, 0x0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_2
    if-eqz v6, :cond_4

    nop

    move v4, v7

    goto :goto_3

    :cond_4
    nop

    :goto_3
    return v4

    :goto_4
    nop

    if-eqz v1, :cond_5

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    nop

    :cond_5
    :goto_5
    throw v2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return v4
.end method
