.class final Lcom/android/server/am/Pageboost$PageboostHandler;
.super Landroid/os/Handler;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PageboostHandler"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    const-wide/16 v4, 0xbb8

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->sendData()V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "launchtime"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "pkg"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Launcher App Execution"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-lez v4, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->updateExecTime(I)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSeqNum()V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    invoke-virtual {v8, v1, v4}, Lcom/android/server/am/Pageboost$PageboostPredictor;->CheckPredictHit(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    add-int/2addr v8, v9

    iput v8, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prefetch Hit! : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->getVramdiskState()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v6, 0x1

    :cond_3
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v8

    invoke-virtual {v8, v1, v9}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    :cond_4
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/Pageboost$PageboostPredictor;->FinalizePredict()V

    :cond_5
    if-eqz v1, :cond_7

    if-lez v4, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppEntry,"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppReEntry,"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v8

    if-eqz v8, :cond_e

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v8

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8, v1, v9}, Lcom/android/server/am/Pageboost$Vramdisk;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)Z

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$Vramdisk;->access$2300(Lcom/android/server/am/Pageboost$Vramdisk;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/16 v6, 0xb

    invoke-virtual {v3, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2100()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost$Vramdisk;->access$000()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2200()Lcom/android/server/am/Pageboost$Vramdisk;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/Pageboost$Vramdisk;->access$2300(Lcom/android/server/am/Pageboost$Vramdisk;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2600(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2500(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2700()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->StoreAppLRU(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/am/Pageboost$PageboostAppList;)V

    invoke-static {}, Lcom/android/server/am/Pageboost$BigDataProxy;->keepLastData()V

    goto/16 :goto_2

    :pswitch_7
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v3

    if-nez v3, :cond_b

    goto/16 :goto_2

    :cond_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "capturing App IO"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/am/Pageboost;->access$2000(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$400()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->needCapture(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v1, v4}, Lcom/android/server/am/Pageboost$PageboostAppCapture;->capture(Lcom/android/server/am/Pageboost$PageboostAppInfo;I)V

    goto :goto_2

    :pswitch_8
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$2400()V

    goto :goto_2

    :pswitch_9
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher Page Up"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/am/Pageboost$PageboostPredictor;->predict(Lcom/android/server/am/Pageboost$PageboostAppList;)V

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1900()Lcom/android/server/am/Pageboost$PageboostPredictor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/Pageboost$PageboostPredictor;->MemPreparation()V

    goto :goto_2

    :pswitch_a
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1800()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/server/am/Pageboost$PageboostPredictor;->HaltPredict()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/Pageboost$PageboostHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/Pageboost;->access$300()Lcom/android/server/am/Pageboost$PageboostHandler;

    move-result-object v4

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/Pageboost$PageboostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :pswitch_b
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1700()V

    nop

    :cond_e
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
