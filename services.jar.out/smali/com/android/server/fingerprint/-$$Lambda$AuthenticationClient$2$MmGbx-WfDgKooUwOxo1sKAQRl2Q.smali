.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$MmGbx-WfDgKooUwOxo1sKAQRl2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$MmGbx-WfDgKooUwOxo1sKAQRl2Q;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$MmGbx-WfDgKooUwOxo1sKAQRl2Q;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient$2;->lambda$onDialogDismissed$1(Lcom/android/server/fingerprint/AuthenticationClient$2;)V

    return-void
.end method
