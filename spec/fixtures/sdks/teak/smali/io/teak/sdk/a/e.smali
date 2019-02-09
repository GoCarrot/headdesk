.class public final Lio/teak/sdk/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/teak/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/teak/sdk/e/c;)V
    .locals 1
    .param p1    # Lio/teak/sdk/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lio/teak/sdk/a/e;->g:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lio/teak/sdk/a/e;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lio/teak/sdk/a/e;->a:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lio/teak/sdk/a/e;->c:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lio/teak/sdk/a/e;->d:Ljava/lang/String;

    .line 47
    iput-boolean p7, p0, Lio/teak/sdk/a/e;->e:Z

    .line 48
    if-nez p8, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lio/teak/sdk/a/e;->f:Ljava/util/Map;

    .line 49
    return-void

    .line 48
    :cond_0
    invoke-virtual {p8}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lio/teak/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/teak/sdk/e/c;B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p8}, Lio/teak/sdk/a/e;-><init>(Lio/teak/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/teak/sdk/e/c;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .line 1099
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    :goto_0
    return-object p0

    .line 1102
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/a/e;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lio/teak/sdk/a/e;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lio/teak/sdk/a/e$1;

    invoke-direct {v0}, Lio/teak/sdk/a/e$1;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 89
    return-void
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string v1, "hostname"

    iget-object v2, p0, Lio/teak/sdk/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "sdkSentryDsn"

    iget-object v2, p0, Lio/teak/sdk/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "appSentryDsn"

    iget-object v2, p0, Lio/teak/sdk/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lio/teak/sdk/a/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lio/teak/sdk/e/c;

    invoke-direct {p0}, Lio/teak/sdk/a/e;->c()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-static {v4}, Lio/teak/sdk/Teak;->formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
