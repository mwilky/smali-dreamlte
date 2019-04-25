.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;
.super Landroid/content/BroadcastReceiver;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v6

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2300(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)J

    move-result-wide v4

    sub-long v4, v2, v4

    :goto_0
    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2400()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2500(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v9

    if-nez v9, :cond_3

    if-eq v1, v10, :cond_1

    const/4 v9, 0x2

    if-ne v1, v9, :cond_3

    :cond_1
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Power connected, source = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v11, 0x5265c00

    cmp-long v9, v4, v11

    if-lez v9, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2600(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v9

    const/4 v11, 0x4

    if-ne v9, v11, :cond_6

    if-eq v1, v11, :cond_6

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v11, "A wireless power source is disconnected"

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v9, v9, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v9}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    const/4 v8, 0x1

    :cond_6
    :goto_1
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2602(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->isAuthenticatonAllowed()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v9

    if-lt v9, v10, :cond_8

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$000()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v11, "It will be verified soon"

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$2302(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;J)J

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v11, 0x3

    invoke-static {v9, v11}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$902(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    iget-object v9, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v9, v10, v6, v7}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :cond_8
    return-void
.end method
