.class final Lio/teak/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/support/v4/content/LocalBroadcastManager;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lio/teak/sdk/b$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b$1;-><init>(Lio/teak/sdk/b;)V

    iput-object v0, p0, Lio/teak/sdk/b;->g:Landroid/content/BroadcastReceiver;

    .line 65
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b;->a:Landroid/support/v4/content/LocalBroadcastManager;

    .line 70
    :try_start_0
    const-string v0, "com.facebook.FacebookSdkVersion"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 78
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    :try_start_1
    const-string v3, "BUILD"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 87
    :goto_1
    if-eqz v0, :cond_0

    .line 89
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "facebook"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "version"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 96
    :cond_0
    :goto_2
    if-eqz v2, :cond_3

    .line 97
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    aget-object v0, v0, v1

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 99
    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    .line 100
    :goto_3
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 101
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 72
    :catch_0
    move-exception v0

    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "facebook"

    const-string v4, "com.facebook.FacebookSdkVersion not found. Facebook SDK hooks disabled."

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 75
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 91
    :catch_3
    move-exception v0

    .line 92
    sget-object v3, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v3, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 104
    :cond_2
    aget v0, v3, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v2, "facebook"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Don\'t know how to use Facebook SDK version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v3, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_3
    :goto_4
    return-void

    .line 108
    :pswitch_0
    :try_start_3
    const-string v0, "com.facebook.Session"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 110
    const-string v0, "getActiveSession"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b;->b:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 112
    :try_start_4
    const-string v0, "getAccessToken"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b;->c:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 117
    :goto_5
    :try_start_5
    const-string v0, "ACTION_ACTIVE_SESSION_OPENED"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b;->e:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 123
    :goto_6
    iget-object v0, p0, Lio/teak/sdk/b;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/teak/sdk/b;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/teak/sdk/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    iget-object v1, p0, Lio/teak/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lio/teak/sdk/b;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lio/teak/sdk/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_4

    .line 113
    :catch_4
    move-exception v0

    .line 114
    :try_start_6
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 119
    :catch_5
    move-exception v0

    .line 120
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 136
    :pswitch_1
    :try_start_7
    const-string v0, "com.facebook.AccessToken"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 137
    const-string v1, "getToken"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b;->d:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 144
    :goto_7
    :try_start_8
    const-string v0, "com.facebook.AccessTokenManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 146
    const-string v1, "ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/teak/sdk/b;->f:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 153
    :goto_8
    iget-object v0, p0, Lio/teak/sdk/b;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/teak/sdk/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    iget-object v1, p0, Lio/teak/sdk/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lio/teak/sdk/b;->a:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lio/teak/sdk/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_4

    .line 138
    :catch_6
    move-exception v0

    .line 139
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 149
    :catch_7
    move-exception v0

    .line 150
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 104
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lio/teak/sdk/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/b;->b:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/b;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic d(Lio/teak/sdk/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lio/teak/sdk/b;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/teak/sdk/b;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 169
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/b;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method
