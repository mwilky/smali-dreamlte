.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onNfcRestrictionPolicyChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field final synthetic val$allowed:Z


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-boolean p2, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->val$allowed:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->currentHall:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v1, v3, v3, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    invoke-static {v1, v3, v4, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1900(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$902(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$10;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$800(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    :cond_2
    return-void
.end method
