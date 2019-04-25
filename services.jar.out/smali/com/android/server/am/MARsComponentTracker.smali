.class public Lcom/android/server/am/MARsComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MARsComponentTracker"


# instance fields
.field mContext:Landroid/content/Context;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsDBManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p3, p0, Lcom/android/server/am/MARsComponentTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    return-void
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const-string/jumbo v1, "favorite"

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    nop

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x2

    if-ne v3, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    goto :goto_0
.end method

.method private updateCSCPackagesList()V
    .locals 8

    const-string v0, "/system/csc/default_application_order.xml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object v2, v5

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/MARsComponentTracker;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    const-string v5, "MARsComponentTracker"

    const-string/jumbo v6, "updateCSCPackagesList() parser is null!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "MARsComponentTracker"

    const-string v4, "IOException in updateCSCPackagesList"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "MARsComponentTracker"

    const-string v4, "XmlPullParserException in updateCSCPackagesList"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    throw v2
.end method


# virtual methods
.method trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    const-string v1, "activity"

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v9, v1, :cond_1

    if-eqz p7, :cond_1

    return-void

    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    move/from16 v11, p6

    invoke-virtual {v1, v8, v11}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz p1, :cond_3

    if-nez v9, :cond_5

    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_3
    if-nez v9, :cond_4

    const-string v1, "MARsComponentTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markAppStartUpResult: auto run off case : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v2, v8

    move-object v3, v7

    move/from16 v4, p1

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string v1, "MARsComponentTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markAppStartUpResult: auto run on case : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void

    :cond_6
    move/from16 v11, p6

    :goto_1
    return-void
.end method
