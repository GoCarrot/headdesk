.class public final Lio/teak/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/f$b;,
        Lio/teak/sdk/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
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

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Ljava/util/concurrent/ExecutorService;

.field private j:Z

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/teak/sdk/f$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/f;->b:Ljava/util/Map;

    .line 145
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/f;->i:Ljava/util/concurrent/ExecutorService;

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/teak/sdk/f;->j:Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/f;->k:Ljava/util/ArrayList;

    .line 148
    iput-object p1, p0, Lio/teak/sdk/f;->c:Ljava/lang/String;

    .line 149
    iput p2, p0, Lio/teak/sdk/f;->d:I

    .line 150
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/f;->a:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lio/teak/sdk/f;->b:Ljava/util/Map;

    const-string v1, "run_id"

    iget-object v2, p0, Lio/teak/sdk/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/teak/sdk/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 154
    new-instance v0, Lio/teak/sdk/f$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/f$1;-><init>(Lio/teak/sdk/f;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 184
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/f;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lio/teak/sdk/f;->b:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lio/teak/sdk/f$b;)V
    .locals 6
    .param p1    # Lio/teak/sdk/f$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lio/teak/sdk/f;->b:Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 225
    const-string v0, "event_id"

    iget-object v2, p0, Lio/teak/sdk/f;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v0, "timestamp"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "log_level"

    iget-object v2, p1, Lio/teak/sdk/f$b;->a:Lio/teak/sdk/f$a;

    iget-object v2, v2, Lio/teak/sdk/f$a;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "event_type"

    iget-object v2, p1, Lio/teak/sdk/f$b;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p1, Lio/teak/sdk/f$b;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "event_data"

    iget-object v2, p1, Lio/teak/sdk/f$b;->c:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_0
    iget-boolean v0, p0, Lio/teak/sdk/f;->g:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lio/teak/sdk/f;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/f$2;

    invoke-direct {v2, p0, p1, v1}, Lio/teak/sdk/f$2;-><init>(Lio/teak/sdk/f;Lio/teak/sdk/f$b;Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 283
    :cond_1
    iget-boolean v0, p0, Lio/teak/sdk/f;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/teak/sdk/f;->c:Ljava/lang/String;

    iget-object v2, p1, Lio/teak/sdk/f$b;->a:Lio/teak/sdk/f$a;

    iget v2, v2, Lio/teak/sdk/f$a;->e:I

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    const-string v0, "{}"

    .line 286
    :try_start_0
    iget v2, p0, Lio/teak/sdk/f;->d:I

    if-lez v2, :cond_3

    .line 287
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    iget v1, p0, Lio/teak/sdk/f;->d:I

    invoke-virtual {v2, v1}, Lio/teak/sdk/e/c;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    :goto_0
    iget-object v1, p1, Lio/teak/sdk/f$b;->a:Lio/teak/sdk/f$a;

    iget v1, v1, Lio/teak/sdk/f$a;->e:I

    iget-object v2, p0, Lio/teak/sdk/f;->c:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_2
    return-void

    .line 289
    :cond_3
    :try_start_1
    new-instance v2, Lio/teak/sdk/e/c;

    invoke-direct {v2, v1}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/f;Lio/teak/sdk/f$b;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$b;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/util/Map;Z)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    if-eqz p3, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v0, v0, Lio/teak/sdk/TeakInstance;->sdkRaven:Lio/teak/sdk/f/a;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v0, v0, Lio/teak/sdk/TeakInstance;->sdkRaven:Lio/teak/sdk/f/a;

    invoke-virtual {v0, p1, p2}, Lio/teak/sdk/f/a;->a(Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 129
    :cond_0
    sget-object v0, Lio/teak/sdk/f$a;->c:Lio/teak/sdk/f$a;

    const-string v1, "exception"

    invoke-static {p1}, Lio/teak/sdk/f/a;->a(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/f;Z)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/teak/sdk/f;->j:Z

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lio/teak/sdk/f;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/f;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lio/teak/sdk/f;->h:Z

    return v0
.end method


# virtual methods
.method protected final a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lio/teak/sdk/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/teak/sdk/f$a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lio/teak/sdk/f$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/teak/sdk/f$b;-><init>(Lio/teak/sdk/f;Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    iget-object v1, p0, Lio/teak/sdk/f;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-boolean v2, p0, Lio/teak/sdk/f;->j:Z

    if-eqz v2, :cond_0

    .line 214
    invoke-direct {p0, v0}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$b;)V

    .line 218
    :goto_0
    monitor-exit v1

    return-void

    .line 216
    :cond_0
    iget-object v2, p0, Lio/teak/sdk/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lio/teak/sdk/f$a;->c:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lio/teak/sdk/f$a;->c:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lio/teak/sdk/f$a;->c:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v0, p1, p2}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 117
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 121
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;Ljava/util/Map;Z)V

    .line 113
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 187
    iput-boolean p1, p0, Lio/teak/sdk/f;->h:Z

    .line 188
    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lio/teak/sdk/f;->f:Z

    .line 192
    iput-boolean p2, p0, Lio/teak/sdk/f;->g:Z

    .line 193
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lio/teak/sdk/f$a;->a:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lio/teak/sdk/f$a;->a:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lio/teak/sdk/f$a;->a:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v0, p1, p2}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    const-string v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lio/teak/sdk/f$a;->b:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v1, p1, v0}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    const-string v0, "message"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lio/teak/sdk/f$a;->b:Lio/teak/sdk/f$a;

    invoke-virtual {p0, v0, p1, p3}, Lio/teak/sdk/f;->a(Lio/teak/sdk/f$a;Ljava/lang/String;Ljava/util/Map;)V

    .line 109
    return-void
.end method
