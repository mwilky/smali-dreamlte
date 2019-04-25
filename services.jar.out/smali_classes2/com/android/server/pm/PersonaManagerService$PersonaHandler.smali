.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p1, "PersonaHandler"

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->access$400(Ljava/lang/String;)I

    return-void
.end method

.method private parseEnterprisedataXml()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    const-string v2, "PersonaManagerService"

    const-string/jumbo v3, "reading from xml resource"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "enterprisedata.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3502(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3302(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto :goto_0

    :cond_0
    const-string v0, "PersonaManagerService"

    const-string v3, "Failed to find enterprisedata.xml in system container"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    :cond_1
    :goto_3
    throw v0

    :cond_2
    :goto_4
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "PersonaHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$400(Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x14

    if-eq v0, v1, :cond_d

    const/16 v1, 0x46

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x50

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    const-string v0, "PersonaManagerService"

    const-string/jumbo v1, "msg : ignore unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->setKeyguardBadgeState(I)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "keyguardOwner"

    const/16 v3, -0x515

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "forceHide"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Bundle;)V

    goto/16 :goto_8

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->hideKnoxBadge()V

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->showKnoxBadge()V

    goto/16 :goto_8

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->naviBarWindowStateChanged(I)V

    goto/16 :goto_8

    :pswitch_6
    :try_start_0
    const-string v0, "PersonaManagerServiceHandler"

    const-string v4, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    const-string v6, "PersonaManagerService"

    const-string v7, "Clear Device compromised"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caller_id_to_show_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-virtual {v6, v7, v2, v8, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v3, "knoxid.reset_on_reboot"

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v1, "knoxid.reset_on_reboot"

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    move v0, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    :try_start_3
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PersonaManagerServiceHandler"

    const-string v1, " MSG_BOOT_COMPLETE_RECEIVED : DO is enabled. remove non-required apps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    const-string v2, "com.felicanetworks.mfm"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    goto/16 :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v1, 0x10

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_8

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v1, 0x20

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_8

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_8

    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_17

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_8

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->removeKnoxBadge()V

    goto/16 :goto_8

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-lez v1, :cond_5

    move v2, v3

    nop

    :cond_5
    move v1, v2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/pm/PersonaManagerService$KnoxBadgeHandler;->drawKnoxBadge(ILandroid/content/ComponentName;Z)V

    goto/16 :goto_8

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_4
    const-string v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForegroundUser(newProfileId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    monitor-exit v1

    goto/16 :goto_8

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_7
    :try_start_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    goto :goto_4

    :cond_9
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v4, 0x2

    goto :goto_4

    :cond_a
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v4, 0x3

    :cond_b
    :goto_4
    new-instance v5, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v6, "KNOX_CONTAINER"

    const-string v7, "CONTAINER_EVENT"

    invoke-direct {v5, v6, v3, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v3, v5

    const-string v5, "cTp"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v5, "e"

    const-string v6, "LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "accTy"

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "add"

    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;I)V

    const-string v5, "PersonaManagerService:KnoxAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LOGIN_ACCOUNTS_CHANGED / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5, v3}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_8

    :cond_c
    :goto_5
    goto/16 :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_8

    :cond_e
    const-string v0, "PersonaManagerService"

    const-string v1, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$502(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    new-instance v1, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$100(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "fwversion"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Z

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;)V

    :cond_f
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    move v1, v2

    :goto_6
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_11

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clean up started for persona list xml - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "personalist.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    const-string v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persona list xml delete status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    const-string v5, "PersonaManagerService:FOTA"

    const-string/jumbo v6, "persona list file don\'t exist"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v5, "PersonaManagerService:FOTA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clean up ended for persona list xml - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string v1, "PersonaManagerService:FOTA"

    const-string v3, "clearing user with persona list cache"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v3, "PersonaManagerService:FOTA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user list file delete status - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "userwithpersonalist.xml.crt"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    const-string v4, "PersonaManagerService:FOTA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user list backup file delete status - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_6
    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "fwversion"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_15

    if-eqz v5, :cond_16

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    :cond_15
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Storing fw version - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", fota version - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "fwversion"

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$600(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "fotaversion"

    const-string v8, "10"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$2000(Lcom/android/server/pm/PersonaManagerService;)V

    :cond_16
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, "com.sec.knox.bluetooth"

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v4, "com.samsung.android.bbc.fileprovider"

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    nop

    :cond_17
    :goto_8
    return-void

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
