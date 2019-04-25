.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;

    iput p2, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$2;

    iget v1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$2$ZIK_fzO20Sqg3KN6ToP1q6LbH8E;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$2;->lambda$onDialogDismissed$2(Lcom/android/server/fingerprint/AuthenticationClient$2;I)V

    return-void
.end method
