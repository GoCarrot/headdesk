.class public final Lio/teak/sdk/push/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/push/b$b;,
        Lio/teak/sdk/push/b$a;
    }
.end annotation


# static fields
.field private static d:Lio/teak/sdk/push/b;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/teak/sdk/push/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/NotificationManagerCompat;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 143
    const-string v0, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/b;->b:Landroid/support/v4/app/NotificationManagerCompat;

    .line 147
    const-string v0, "io.teak.sdk.Preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    const-string v1, "io.teak.sdk.Preferences.PushStateChain"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v2, Lio/teak/sdk/e/a;

    invoke-direct {v2, v0}, Lio/teak/sdk/e/a;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2}, Lio/teak/sdk/e/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 154
    new-instance v3, Lio/teak/sdk/push/b$b;

    check-cast v0, Lio/teak/sdk/e/c;

    invoke-direct {v3, p0, v0}, Lio/teak/sdk/push/b$b;-><init>(Lio/teak/sdk/push/b;Lio/teak/sdk/e/c;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    :cond_0
    :goto_1
    new-instance v0, Lio/teak/sdk/push/b$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/push/b$1;-><init>(Lio/teak/sdk/push/b;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 173
    return-void

    .line 156
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic a(Lio/teak/sdk/push/b;)Lio/teak/sdk/push/b$a;
    .locals 2

    .prologue
    .line 31
    .line 1196
    iget-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/teak/sdk/push/b$a;->a:Lio/teak/sdk/push/b$a;

    :goto_0
    return-object v0

    .line 1198
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    iget-object v1, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/push/b$b;

    .line 1199
    iget-object v0, v0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    goto :goto_0
.end method

.method public static a()Lio/teak/sdk/push/b;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lio/teak/sdk/push/b;->d:Lio/teak/sdk/push/b;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/push/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lio/teak/sdk/push/b;Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2

    .prologue
    .line 31
    .line 1176
    iget-object v0, p0, Lio/teak/sdk/push/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/push/b$2;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/push/b$2;-><init>(Lio/teak/sdk/push/b;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/push/b;Landroid/content/Context;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 4

    .prologue
    .line 31
    .line 2203
    new-instance v1, Lio/teak/sdk/e/a;

    invoke-direct {v1}, Lio/teak/sdk/e/a;-><init>()V

    .line 2204
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/push/b$b;

    .line 3106
    new-instance v3, Lio/teak/sdk/e/c;

    invoke-virtual {v0}, Lio/teak/sdk/push/b$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v0}, Lio/teak/sdk/e/c;-><init>(Ljava/util/Map;)V

    .line 2205
    invoke-virtual {v1, v3}, Lio/teak/sdk/e/a;->a(Ljava/lang/Object;)Lio/teak/sdk/e/a;

    goto :goto_0

    .line 2208
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/push/b;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/push/b$3;

    invoke-direct {v2, p0, p1, v1}, Lio/teak/sdk/push/b$3;-><init>(Lio/teak/sdk/push/b;Landroid/content/Context;Lio/teak/sdk/e/a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lio/teak/sdk/push/b;->d:Lio/teak/sdk/push/b;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lio/teak/sdk/push/b;

    invoke-direct {v0, p0}, Lio/teak/sdk/push/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/teak/sdk/push/b;->d:Lio/teak/sdk/push/b;

    .line 136
    :cond_0
    return-void
.end method

.method static synthetic b(Lio/teak/sdk/push/b;Landroid/content/Context;)Lio/teak/sdk/push/b$b;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 31
    .line 1243
    invoke-virtual {p0}, Lio/teak/sdk/push/b;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1251
    sget-object v2, Lio/teak/sdk/push/b$a;->a:Lio/teak/sdk/push/b$a;

    .line 1259
    :goto_0
    invoke-static {p1}, Lio/teak/sdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1260
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1261
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 1262
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v5

    .line 1263
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    .line 1264
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v4

    .line 1267
    if-le v0, v1, :cond_0

    move v0, v1

    .line 1268
    :goto_1
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    move v5, v1

    move v3, v4

    move v4, v0

    .line 1270
    :goto_2
    new-instance v0, Lio/teak/sdk/push/b$b;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/teak/sdk/push/b$b;-><init>(Lio/teak/sdk/push/b;Lio/teak/sdk/push/b$a;ZZZ)V

    .line 31
    return-object v0

    .line 1245
    :pswitch_0
    sget-object v2, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    goto :goto_0

    .line 1248
    :pswitch_1
    sget-object v2, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1267
    goto :goto_1

    :cond_1
    move v5, v1

    move v4, v1

    goto :goto_2

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lio/teak/sdk/push/b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    const/4 v3, -0x1

    .line 225
    :try_start_0
    const-class v0, Landroid/support/v4/app/NotificationManagerCompat;

    const-string v4, "areNotificationsEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 231
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/teak/sdk/push/b;->b:Landroid/support/v4/app/NotificationManagerCompat;

    if-eqz v0, :cond_2

    .line 233
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/push/b;->b:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :goto_1
    return v2

    :catch_0
    move-exception v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 233
    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public final c()Ljava/util/Map;
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
    .line 274
    iget-object v0, p0, Lio/teak/sdk/push/b;->a:Ljava/util/List;

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/push/b$b;

    .line 277
    invoke-virtual {v0}, Lio/teak/sdk/push/b$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    const-string v2, "push_state_chain"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    return-object v0
.end method
