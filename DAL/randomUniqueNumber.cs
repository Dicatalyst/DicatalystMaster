using System;
using System.Security.Cryptography;
using System.Text;

namespace DAL
{
    public class randomUniqueNumber
    {
        public string getRandomUniqueNumber()
        {
            int maxSize = 10;
            //int minSize = 5;
            char[] chars = new char[62];
            string a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            //a = “abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890?;
            chars = a.ToCharArray();
            int size = maxSize;
            byte[] data = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(data);
            size = maxSize;
            data = new byte[size];
            crypto.GetNonZeroBytes(data);
            StringBuilder result = new StringBuilder(size);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length - 1)]);
            }
            string uniqueRandomId = result.ToString();
            return uniqueRandomId;
        }
        public string getRandomUniqueNumberforResetPassword()
        {
            int maxSize = 6;
            //int minSize = 5;
            char[] chars = new char[62];
            string a = "abcdefjhijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            //a = “abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890?;
            chars = a.ToCharArray();
            int size = maxSize;
            byte[] data = new byte[1];
            RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider();
            crypto.GetNonZeroBytes(data);
            size = maxSize;
            data = new byte[size];
            crypto.GetNonZeroBytes(data);
            StringBuilder result = new StringBuilder(size);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length - 1)]);
            }
            string uniqueRandomId = result.ToString();
            return uniqueRandomId;
        }

     
    }
}