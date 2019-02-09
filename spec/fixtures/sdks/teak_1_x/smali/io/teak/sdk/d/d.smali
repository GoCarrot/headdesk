.class public final Lio/teak/sdk/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/d/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;Ljava/lang/String;)Lio/teak/sdk/d/g$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v2, Lio/teak/sdk/d/g$a;->c:Lio/teak/sdk/d/g$a;

    .line 42
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    const-string v3, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 46
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 47
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v0, v3, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 55
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 59
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-ge v3, v4, :cond_1

    .line 60
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v4, v3

    .line 64
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/net/HttpRetryException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_17
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/net/HttpRetryException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 93
    :cond_0
    :goto_3
    if-eqz v1, :cond_a

    .line 94
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    .line 98
    :goto_4
    return-object v0

    .line 62
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/net/HttpRetryException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    move-object v4, v3

    goto :goto_0

    .line 71
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 72
    new-instance v1, Lio/teak/sdk/d/g$a;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lio/teak/sdk/d/g$a;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/net/HttpRetryException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 89
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 93
    :goto_5
    if-eqz v0, :cond_b

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_4

    .line 87
    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_6
    if-eqz v1, :cond_3

    .line 89
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 93
    :cond_3
    :goto_7
    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 87
    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_8
    if-eqz v1, :cond_4

    .line 89
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 93
    :cond_4
    :goto_9
    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 87
    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_a
    if-eqz v1, :cond_5

    .line 89
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 93
    :cond_5
    :goto_b
    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 87
    :catch_4
    move-exception v0

    move-object v0, v1

    :goto_c
    if-eqz v1, :cond_6

    .line 89
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 93
    :cond_6
    :goto_d
    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 87
    :catch_5
    move-exception v0

    move-object v0, v1

    :goto_e
    if-eqz v1, :cond_7

    .line 89
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 93
    :cond_7
    :goto_f
    if-eqz v0, :cond_a

    .line 94
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    move-object v0, v2

    goto :goto_4

    .line 87
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_10
    if-eqz v1, :cond_8

    .line 89
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 93
    :cond_8
    :goto_11
    if-eqz v2, :cond_9

    .line 94
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    throw v0

    :catch_6
    move-exception v2

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto :goto_d

    :catch_c
    move-exception v1

    goto :goto_f

    :catch_d
    move-exception v1

    goto :goto_11

    .line 87
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_10

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_10

    :catch_e
    move-exception v3

    goto :goto_e

    :catch_f
    move-exception v1

    move-object v1, v3

    goto :goto_e

    :catch_10
    move-exception v3

    goto :goto_c

    :catch_11
    move-exception v1

    move-object v1, v3

    goto :goto_c

    :catch_12
    move-exception v3

    goto :goto_a

    :catch_13
    move-exception v1

    move-object v1, v3

    goto :goto_a

    :catch_14
    move-exception v3

    goto :goto_8

    :catch_15
    move-exception v1

    move-object v1, v3

    goto :goto_8

    :catch_16
    move-exception v3

    goto :goto_6

    :catch_17
    move-exception v1

    move-object v1, v3

    goto/16 :goto_6

    :catch_18
    move-exception v0

    move-object v0, v1

    goto/16 :goto_2

    :catch_19
    move-exception v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_a
    move-object v0, v2

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_4
.end method
