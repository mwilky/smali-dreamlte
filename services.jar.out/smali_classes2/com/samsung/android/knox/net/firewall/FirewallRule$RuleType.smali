.class public final enum Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
.super Ljava/lang/Enum;
.source "FirewallRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/firewall/FirewallRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

.field public static final enum REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v1, "DENY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v1, "ALLOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v1, "REDIRECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const-string v1, "REDIRECT_EXCEPTION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .locals 1

    const-class v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->$VALUES:[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    return-object v0
.end method
