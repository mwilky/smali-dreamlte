.class Lcom/android/server/policy/SamsungPhoneWindowManager$4;
.super Landroid/telephony/PhoneStateListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1102(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1100(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$4;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->access$1200(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    :cond_2
    return-void
.end method
