.class final Lio/teak/sdk/wrapper/unity/TeakUnity$2;
.super Lio/teak/sdk/Teak$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/wrapper/unity/TeakUnity;->registerRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lio/teak/sdk/wrapper/unity/TeakUnity$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lio/teak/sdk/Teak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lio/teak/sdk/wrapper/unity/TeakUnity;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0}, Lio/teak/sdk/e/c;-><init>()V

    .line 89
    const-string v1, "route"

    iget-object v2, p0, Lio/teak/sdk/wrapper/unity/TeakUnity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 90
    const-string v1, "parameters"

    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 91
    const-string v1, "DeepLink"

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/teak/sdk/wrapper/unity/TeakUnity;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
