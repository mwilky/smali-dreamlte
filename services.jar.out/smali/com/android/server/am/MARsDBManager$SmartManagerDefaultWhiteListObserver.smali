.class Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerDefaultWhiteListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_0

    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "onChange - mSmartManagerDefaultWhiteListObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerDefaultWhiteListObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static {v0}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)V

    return-void
.end method
