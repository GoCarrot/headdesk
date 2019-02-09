.class Lio/teak/sdk/service/RavenService$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/service/RavenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/service/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lio/teak/sdk/service/RavenService;)V
    .locals 1

    .prologue
    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/service/RavenService$1;->d:Ljava/util/ArrayList;

    .line 1102
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/service/RavenService$1;->e:Ljava/util/concurrent/ExecutorService;

    .line 1149
    return-void
.end method

.method synthetic constructor <init>(Lio/teak/sdk/service/RavenService;B)V
    .locals 0

    .prologue
    .line 3097
    invoke-direct {p0, p1}, Lio/teak/sdk/service/RavenService$1;-><init>(Lio/teak/sdk/service/RavenService;)V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/service/RavenService$1;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 4097
    iget-object v0, p0, Lio/teak/sdk/service/RavenService$1;->c:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic b(Lio/teak/sdk/service/RavenService$1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 5097
    iget-object v0, p0, Lio/teak/sdk/service/RavenService$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/service/RavenService$1;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 6097
    iget-object v0, p0, Lio/teak/sdk/service/RavenService$1;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2105
    new-instance v0, Lio/teak/sdk/service/a;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/service/a;-><init>(Lio/teak/sdk/service/RavenService$1;Landroid/content/Intent;)V

    .line 2106
    iget-object v1, p0, Lio/teak/sdk/service/RavenService$1;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2107
    :try_start_0
    iget-object v2, p0, Lio/teak/sdk/service/RavenService$1;->c:Ljava/net/URL;

    if-nez v2, :cond_0

    .line 2108
    iget-object v2, p0, Lio/teak/sdk/service/RavenService$1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2112
    :goto_0
    monitor-exit v1

    return-void

    .line 2110
    :cond_0
    iget-object v2, p0, Lio/teak/sdk/service/RavenService$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 2116
    const-string v0, "dsn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2117
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2118
    :cond_0
    const-string v0, "Teak.Raven.Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DSN empty for app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "appId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    :goto_0
    return-void

    .line 2122
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2124
    const-string v0, ""

    .line 2125
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-ltz v2, :cond_2

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2130
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2132
    invoke-virtual {v1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2133
    const/4 v4, 0x0

    aget-object v4, v3, v4

    iput-object v4, p0, Lio/teak/sdk/service/RavenService$1;->a:Ljava/lang/String;

    .line 2134
    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lio/teak/sdk/service/RavenService$1;->b:Ljava/lang/String;

    .line 2136
    new-instance v3, Ljava/net/URL;

    const-string v4, "%s://%s%s/api%s/store/"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 2137
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const/4 v0, 0x3

    aput-object v2, v5, v0

    .line 2136
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lio/teak/sdk/service/RavenService$1;->c:Ljava/net/URL;

    .line 2139
    iget-object v2, p0, Lio/teak/sdk/service/RavenService$1;->d:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/service/RavenService$1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/service/a;

    .line 2141
    iget-object v4, p0, Lio/teak/sdk/service/RavenService$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2143
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    const-string v2, "Teak.Raven.Service"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error parsing DSN: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2143
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
