.class public final synthetic Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/OneHandOpPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;->f$0:Lcom/android/server/policy/OneHandOpPolicyManager;

    invoke-static {v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->lambda$systemBooted$0(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    return-void
.end method
