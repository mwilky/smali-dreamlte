.class public final synthetic Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/-$$Lambda$ExecStringCrypto$Zw4mhVVAOGfDGeLTrVpTc0koK2U;->f$0:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/sepunion/friends/executable/ExecStringCrypto;->lambda$getEncryptedMultipleData$0(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
