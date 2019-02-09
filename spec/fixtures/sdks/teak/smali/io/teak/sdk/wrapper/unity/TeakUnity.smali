.class public Lio/teak/sdk/wrapper/unity/TeakUnity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# static fields
.field private static teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

.field private static unitySendMessage:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    :try_start_0
    const-string v0, "com.unity3d.player.UnityPlayer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 23
    const-string v1, "UnitySendMessage"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->unitySendMessage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lio/teak/sdk/wrapper/unity/TeakUnity;->unitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lio/teak/sdk/wrapper/TeakInterface;

    new-instance v1, Lio/teak/sdk/wrapper/unity/TeakUnity$1;

    invoke-direct {v1}, Lio/teak/sdk/wrapper/unity/TeakUnity$1;-><init>()V

    invoke-direct {v0, v1}, Lio/teak/sdk/wrapper/TeakInterface;-><init>(Lio/teak/sdk/wrapper/a;)V

    sput-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    .line 46
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->unitySendMessage:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readyForDeepLinks()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->teakInterface:Lio/teak/sdk/wrapper/TeakInterface;

    invoke-virtual {v0}, Lio/teak/sdk/wrapper/TeakInterface;->readyForDeepLinks()V

    .line 51
    return-void
.end method

.method public static registerRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "route"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lio/teak/sdk/wrapper/unity/TeakUnity$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/wrapper/unity/TeakUnity$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static testExceptionReporting()V
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    new-instance v1, Lio/teak/sdk/f/a$d;

    const-string v2, "2.0.1"

    invoke-direct {v1, v2}, Lio/teak/sdk/f/a$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method private static unitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    sget-object v0, Lio/teak/sdk/wrapper/unity/TeakUnity;->unitySendMessage:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TeakGameObject"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
