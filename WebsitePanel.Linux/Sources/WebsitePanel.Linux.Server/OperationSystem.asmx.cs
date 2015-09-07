﻿using System;
using System.Web;
using System.Web.Services;
using WebsitePanel.Providers;
using WebsitePanel.Providers.OS;

namespace WebsitePanel.Server
{
	public class OperationSystem : HostingServiceProviderWebService, IOperatingSystem
	{
		private IOperatingSystem OsProvider {
			get { return (IOperatingSystem)this.Provider; }
		}

		#region IOperatingSystem implementation

		public bool FileExists (string path)
		{
			return OsProvider.FileExists (path);
		}

		public bool DirectoryExists (string path)
		{
			throw new NotImplementedException ();
		}

		public SystemFile GetFile (string path)
		{
			throw new NotImplementedException ();
		}

		public SystemFile[] GetFiles (string path)
		{
			throw new NotImplementedException ();
		}

		public SystemFile[] GetDirectoriesRecursive (string rootFolder, string path)
		{
			throw new NotImplementedException ();
		}

		public SystemFile[] GetFilesRecursive (string rootFolder, string path)
		{
			throw new NotImplementedException ();
		}

		public SystemFile[] GetFilesRecursiveByPattern (string rootFolder, string path, string pattern)
		{
			throw new NotImplementedException ();
		}

		#endregion
	}
}

