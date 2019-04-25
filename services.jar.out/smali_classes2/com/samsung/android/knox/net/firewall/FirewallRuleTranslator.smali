.class public Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;
.super Ljava/lang/Object;
.source "FirewallRuleTranslator.java"


# static fields
.field private static networkInterfaceOptions:[Ljava/lang/String;

.field private static portLocationOptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "wifi"

    const-string v1, "data"

    const-string v2, "*"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const-string/jumbo v0, "remote"

    const-string v1, "local"

    const-string v2, "*"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static translateAllowRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    array-length v2, v1

    const/4 v4, 0x4

    if-le v2, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "*"

    const-string v4, "*"

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    const-string v6, "*"

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v8, 0x0

    aget-object v9, v1, v8

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    return-object v0

    :cond_2
    aget-object v10, v1, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget-object v10, v1, v8

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v10, v10, v8

    const/4 v11, 0x1

    aget-object v12, v1, v11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v10, v10, v11

    aget-object v12, v1, v11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    :goto_0
    array-length v10, v1

    const/4 v12, 0x3

    if-ne v10, v12, :cond_7

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v10, v10, v8

    aget-object v13, v1, v3

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_5
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v10, v10, v11

    aget-object v13, v1, v3

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    :cond_7
    :goto_1
    array-length v10, v1

    if-le v10, v12, :cond_a

    aget-object v6, v1, v3

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v8, v1, v12

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v11

    aget-object v8, v1, v12

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_9
    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    :cond_a
    :goto_2
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {v3, v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v8, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v8, v6, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object v3

    :cond_b
    :goto_3
    return-object v0
.end method

.method public static translateDenyRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 14

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    array-length v2, v1

    const/4 v4, 0x4

    if-le v2, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "*"

    const-string v4, "*"

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    const-string v6, "*"

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v8, 0x0

    aget-object v9, v1, v8

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    return-object v0

    :cond_2
    aget-object v10, v1, v8

    invoke-virtual {v10, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget-object v10, v1, v8

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v10, v10, v8

    const/4 v11, 0x1

    aget-object v12, v1, v11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_3
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->portLocationOptions:[Ljava/lang/String;

    aget-object v10, v10, v11

    aget-object v12, v1, v11

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    :goto_0
    array-length v10, v1

    const/4 v12, 0x3

    if-ne v10, v12, :cond_7

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v10, v10, v8

    aget-object v13, v1, v3

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_5
    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v10, v10, v11

    aget-object v13, v1, v3

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    :cond_7
    :goto_1
    array-length v10, v1

    if-le v10, v12, :cond_a

    aget-object v6, v1, v3

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v8, v1, v12

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v3, v3, v11

    aget-object v8, v1, v12

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_2

    :cond_9
    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    :cond_a
    :goto_2
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {v3, v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v8, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v8, v6, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object v3

    :cond_b
    :goto_3
    return-object v0
.end method

.method public static translateFirewallRuleToOldFormat(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->convertNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static translateRedirectExceptionRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_4

    array-length v2, v1

    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "*"

    const-string v5, "*"

    const-string v6, "*"

    const/4 v7, 0x0

    aget-object v8, v1, v7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    return-object v0

    :cond_2
    aget-object v9, v1, v7

    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget-object v7, v1, v7

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    array-length v7, v1

    if-ne v7, v4, :cond_3

    aget-object v6, v1, v3

    :cond_3
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v7, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {v3, v4, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4, v6, v0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    return-object v3

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static translateRedirectRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    array-length v3, v2

    if-eq v3, v4, :cond_1

    return-object v1

    :cond_1
    const-string v3, "*"

    const-string v6, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "*"

    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    const/4 v11, 0x0

    aget-object v12, v2, v11

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    return-object v1

    :cond_2
    aget-object v14, v2, v11

    invoke-virtual {v14, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v14, v2, v11

    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    aget-object v15, v2, v14

    const-string v5, ":"

    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v13, :cond_3

    return-object v1

    :cond_3
    aget-object v13, v2, v14

    invoke-virtual {v13, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aget-object v13, v2, v14

    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    array-length v13, v2

    if-ne v13, v4, :cond_6

    const/4 v4, 0x2

    aget-object v9, v2, v4

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v4, v4, v11

    const/4 v11, 0x3

    aget-object v13, v2, v11

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->networkInterfaceOptions:[Ljava/lang/String;

    aget-object v4, v4, v14

    aget-object v11, v2, v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    :cond_6
    :goto_0
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v11, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-direct {v4, v11, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    new-instance v11, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v11, v9, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v11

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    invoke-virtual {v4, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    return-object v4
.end method

.method public static translateRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateAllowRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateDenyRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRedirectRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    if-ne p1, v0, :cond_3

    invoke-static {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleTranslator;->translateRedirectExceptionRule(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
