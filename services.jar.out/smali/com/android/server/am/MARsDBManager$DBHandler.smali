.class Lcom/android/server/am/MARsDBManager$DBHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const-string v3, "/data/system/ssrm_local_freecess"

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsDBManager;->readSysfs(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v2, v2, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->updateWhiteListForFreecess()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$1600(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_0

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1500(Lcom/android/server/am/MARsDBManager;I)V

    :cond_0
    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "userId"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "isDataCleared"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v3, :cond_1

    if-eq v4, v8, :cond_1

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v6, v3, v4, v5}, Lcom/android/server/am/MARsDBManager;->access$1400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;IZ)V

    :cond_1
    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "callee"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "caller"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "isblock"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v6, "requesttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move-object v9, v4

    move-object v10, v5

    move v11, v3

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Lcom/android/server/am/MARsDBManager;->access$1300(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_2
    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "boot"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;Z)V

    :cond_3
    goto/16 :goto_0

    :pswitch_8
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$1100(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_4

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v4, v3}, Lcom/android/server/am/MARsDBManager;->access$1000(Lcom/android/server/am/MARsDBManager;I)V

    :cond_4
    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v8, :cond_5

    iget-object v4, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v4, v6, v7, v6, v3}, Lcom/android/server/am/MARsDBManager;->access$900(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;ZI)V

    :cond_5
    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_6

    if-eq v4, v8, :cond_6

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5, v3, v4}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V

    :cond_6
    goto/16 :goto_0

    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v3, :cond_7

    if-eq v4, v8, :cond_7

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5, v3, v4}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;I)V

    :cond_7
    goto/16 :goto_0

    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const-string/jumbo v7, "onCreate"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v3, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    const-string/jumbo v3, "onUpgrade"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v6, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v6, :cond_8

    const-string v6, "MARsDBManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received MARS_DB_SM_CHANGED_MSG, --mDBCreate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v8, v8, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " --onUpgrade = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " --mDBUpdated = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v8}, Lcom/android/server/am/MARsDBManager;->access$500(Lcom/android/server/am/MARsDBManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v3, :cond_9

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPolicyManager;->clearAllPackages()V

    :cond_9
    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v6, v6, Lcom/android/server/am/MARsDBManager;->mDBCreate:Z

    if-nez v6, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v6}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)V

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v6}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    if-eqz v6, :cond_b

    iget-object v6, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v6, v6, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v6, v6, Lcom/android/server/am/MARsPolicyManager;->mHandler:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(J)V

    :cond_b
    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string/jumbo v3, "packageName"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "strUid"

    const-string v8, "0"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "strMode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v8, "strFasReason"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "strExtras"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v8, "time"

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v8, "strLevel"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v8, 0x0

    const/16 v20, 0x0

    if-eqz v3, :cond_c

    cmp-long v4, v14, v4

    if-eqz v4, :cond_c

    const/16 v4, 0x59

    new-instance v5, Lcom/android/server/am/MARsDBManager$FASDBValue;

    iget-object v9, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    move-object v8, v5

    move-object v10, v3

    move-object v11, v6

    move-object/from16 v12, v17

    move-object v13, v7

    move-wide/from16 v21, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    invoke-direct/range {v8 .. v16}, Lcom/android/server/am/MARsDBManager$FASDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v8, v3, v6, v4, v5}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$FASDBValue;)V

    :cond_c
    goto :goto_0

    :pswitch_f
    const/16 v2, 0x1ff

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string/jumbo v4, "values"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v5, v2, v4}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    :cond_d
    goto :goto_0

    :pswitch_10
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v2, v3}, Lcom/android/server/am/MARsDBManager;->access$200(Lcom/android/server/am/MARsDBManager;Z)V

    goto :goto_0

    :pswitch_11
    iget-object v2, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v2}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
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
    .end packed-switch
.end method
